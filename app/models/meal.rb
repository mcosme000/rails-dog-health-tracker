class Meal < ApplicationRecord
  has_many :cares

  validates :category, presence: true
  validates :quantity, presence: true, numericality: { only_integer: true }
end
