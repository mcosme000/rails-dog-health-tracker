class Illness < ApplicationRecord
  belongs_to :dog

  validates :name, presence: true
  validates :description, length: { maximum: 500 }
end
