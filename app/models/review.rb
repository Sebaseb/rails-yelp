class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :content, :rating, allow_blank: false
  validates :rating, only_integer: true
  validates :rating, numericality: { in: 0..5 }
end
