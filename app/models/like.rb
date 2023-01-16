class Like < ApplicationRecord
  belongs_to :target
  belongs_to :user

  validates :user_id, uniqueness: { scope: :target_id} 
end
