require 'rails_helper'

RSpec.describe Transaction, type: :model do
  before(:all) do
    @user = User.create(username: 'Ngani', email: 'ngani@gmail.com', password: '123456', password_confirmation: '123456')
  end

  it "doesn't create a transaction with an empty name, amount or description" do
    @transaction2 = Transaction.create(name: '',
                                        description: '',
                                        amount: nil,
                                        user_id: @user.id)
    expect(@transaction2.valid?).to eq false
  end

  it 'has to belong to a user' do
    @transaction1 = Transaction.new(name: 'Transaction01', 
                                    description: 'description for trans 01',
                                    amount: 0.50)
    expect(@transaction1.valid?).to eq false
  end

  # Clear created User(s), Group(s) and Transaction(s)
  after(:all) do
    User.destroy_all &
      Transaction.destroy_all
  end
  describe 'associations' do
    it { should belong_to(:user) }
  end
end
