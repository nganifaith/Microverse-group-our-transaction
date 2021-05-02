class TransactionsController < ApplicationController
  before_action :authenticate_user!
  def index
    @transactions = params[:external] ? Transaction.where({ group_id: nil, user_id: current_user.id }).dsc : Transaction.grouped.where(user_id: current_user.id).dsc
    @external = params[:external]
  end

  def new
    @transaction = Transaction.new
    @groups = Group.all.collect { |group| [group.name, group.id] }
  end

  def create
    @transaction = current_user.transactions.build(transaction_params)

    if @transaction.save
      flash[:success] = "#{@transaction.name} transaction successfully created"
      redirect_to transactions_path
    else
      render :new
    end
  end

  def show
    @transaction = Transaction.find_by(id: params[:id])
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name,
                                        :description,
                                        :amount,
                                        :group_id)
  end
end
