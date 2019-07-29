require 'rails_helper'

RSpec.describe User, type: :model do
  
  context 'Validates' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_presence_of(:password_confirmation) }
  end

  context 'Associations' do
    it { is_expected.to have_many(:tasks) }
  end

end
