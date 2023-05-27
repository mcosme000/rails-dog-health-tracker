class Walk < ApplicationRecord

  has_and_belongs_to_many :dogs
  validates :category, presence: true
end
