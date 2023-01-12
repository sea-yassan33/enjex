class Target < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :exise

  with_options presence: true do
    validates :title
    validates :youtube
  end

  validates :exise_category_id, numericality: { other_than: 1 } 
end
