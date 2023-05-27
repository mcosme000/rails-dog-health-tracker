class Meal < ApplicationRecord

  belongs_to :dog

  validates :category, presence: :true
  validates :quantity, presence: true, numericality: { only_integer: true }

end
