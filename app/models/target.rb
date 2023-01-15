class Target < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :youtube
    validates :exise_category_id, numericality: { other_than: 1 } 
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :exise

  belongs_to :user
  has_many :comments
  has_many :like, dependent: :destroy
end
