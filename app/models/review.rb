class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true, numericality: :only_integer
  validates :rating, inclusion: { in: (0..5) }
  # validates :rating,

end
