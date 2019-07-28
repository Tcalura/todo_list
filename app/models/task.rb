class Task < ApplicationRecord
  belongs_to :user

  scope :all_from_user, -> (id) { where(user_id: id)}
  
end
