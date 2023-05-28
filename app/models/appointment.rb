class Appointment < ApplicationRecord
  has_many :appointments_dogs, dependent: :destroy
  has_many :dogs, through: :appointments_dogs

  belongs_to :establishment

  accepts_nested_attributes_for :appointments_dogs
end
