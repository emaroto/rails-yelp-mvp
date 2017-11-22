class Review < ApplicationRecord
  RATING = [0,1,2,3,4,5]
  belongs_to :restaurant
  validates :rating, inclusion: { in: RATING }
  validates :content, :rating, presence: true
  validates :restaurant_id, null: false
  validates_numericality_of :rating, only_integer: true
end
