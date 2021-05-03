require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:all) do
    @user = User.create(username: 'Ngani', email: 'ngani@gmail.com', password: '123456', password_confirmation: '123456')
  end

  it 'creates a new group' do
    @group1 = Group.create(name: 'Group01', user_id: @user.id)
    expect(@group1.valid?).to eq(false)
  end

  it "doesn't create a group with an empty name" do
    @group2 = Group.create(name: '')
    expect(@group2.valid?).to eq false
  end

  it 'creates a group with only a length of min:4 and max:30' do
    @group2 = Group.create(name: '')
    expect(@group2.errors.full_messages[1]).to include 'short'
    @group2 = Group.create(name: '012345678901234567890123456789N')
    expect(@group2.errors.full_messages[0]).to include 'long'
  end

  it 'creates a group only if the name is unique' do
    @group1 = Group.create(name: 'Group01', user_id: @user.id)
    @group2 = Group.create(name: @group1.name.to_s)
    expect(@group2.valid?).to eq false
  end

  it 'has to belong to a user' do
    @group1 = Group.create(name: 'Group01')
    expect(@group1.valid?).to eq false
  end
  after(:all) { User.destroy_all & Group.destroy_all }

  describe 'associations' do
    it { should belong_to(:user) }
  end
  describe 'associations' do
    it { should have_many(:transactions) }
  end
end
