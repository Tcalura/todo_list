require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do
  
  context 'Validates Presence' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:password_confirmation) }
  end

  context 'Validate length of password' do
    it { is_expected.to validate_length_of(:password).is_at_least(6) }
  end

  context 'Validate Email Roles' do
    it 'Email Regex' do
      user = build(:user)
      expect(user.email).to match(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/)
    end
  end

  context 'Associations' do
    it { is_expected.to have_many(:tasks) }
  end

end
