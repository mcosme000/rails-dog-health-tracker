class Medication < ApplicationRecord

  belongs_to :dog

  validates :category, presence: :true
  validates :reminder, numericality: { only_integer: true }
end
