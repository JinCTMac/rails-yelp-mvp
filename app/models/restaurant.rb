class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy  # restaurant.reviews

  CATEGORIES = %w(chinese italian japanese french belgian)

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
