class Stablishment < ApplicationRecord
  has_many :appointments, dependent: :destroy

  validates :category, presence: :true
  validates :name, presence: :true
  validates :address, presence: :true
  validates :phone_number, presence: :true, numericality: { only_integer: true }

end
