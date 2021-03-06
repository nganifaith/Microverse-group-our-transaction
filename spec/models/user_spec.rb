require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user1) do
    User.new(username: 'Faith', email: 'faith@gmail.com', password: '123456')
  end
  let(:user2) do
    User.new(username: 'Ngani', email: 'ngani@gmail.com', password: '123456')
  end
  describe 'validates user attributes' do
    it 'validates if the user is valid' do
      expect(user1.valid?).to eql(false)
    end

    it 'validates if the username is present' do
      user1.username = 'hujg '
      expect(user1.valid?).not_to eql(true)
    end
  end
  describe 'associations' do
    it { should have_many(:groups) }
  end
  describe 'associations' do
    it { should have_many(:transactions) }
  end
end
