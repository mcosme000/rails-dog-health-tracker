class Establishment < ApplicationRecord
  has_many :appointments

  validates :name, presence: true, length: { maximum: 40 }
  validates :category, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true }

  def self.reset_phone_number(place)
    place.phone_number.gsub(/-/, '')
  end
end
