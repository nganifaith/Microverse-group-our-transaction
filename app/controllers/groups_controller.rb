class GroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    @groups = Group.all.includes(group_icon_attachment: :blob)
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.build(group_params)
    if @group.save
      redirect_to groups_path
      flash[:notice] = 'Your event has been created'
    else
      flash[:notice] = 'Your event was not created'
      render :new
    end
  end

  def show
    @group = Group.find_by(id: params[:id])
    @transactions = @group.transactions.includes([:user])
  end

  private

  def group_params
    params.require(:group).permit(:name, :group_icon)
  end
end
