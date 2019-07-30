class Task < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true
  # validates :completed, presence: true

  scope :all_from_user, -> (id) { where(user_id: id)}
  
end
