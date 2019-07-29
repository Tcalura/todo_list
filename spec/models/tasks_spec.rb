require 'rails_helper'

RSpec.describe Task, type: :model do
  
  context 'Validates Presence' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:completed) }
  end

  context 'Associations' do
    it { is_expected.to belong_to(:user) } 
  end

end
