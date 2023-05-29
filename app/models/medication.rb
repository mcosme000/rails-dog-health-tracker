class Medication < ApplicationRecord
  has_many :cares

  validates :category, presence: true
end
