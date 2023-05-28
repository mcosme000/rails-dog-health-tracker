class Dog < ApplicationRecord
  has_and_belongs_to_many :users

  has_many :appointments_dogs, dependent: :destroy
  has_many :appointments, through: :appointments_dogs

  has_many :cares_dogs, dependent: :destroy
  has_many :cares, through: :cares_dogs

  has_many :documents
  has_many :illnesses
end
