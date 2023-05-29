class Dog < ApplicationRecord
  has_and_belongs_to_many :users

  has_many :appointments_dogs, dependent: :destroy
  has_many :appointments, through: :appointments_dogs

  has_many :cares_dogs, dependent: :destroy
  has_many :cares, through: :cares_dogs

  has_many :basics, through: :cares
  has_many :meals, through: :cares
  has_many :medications, through: :cares
  has_many :poops, through: :cares
  has_many :walks, through: :cares

  has_many :documents
  has_many :illnesses

  validates :name, presence: true, length: { maximum: 20 }
  validates :breed, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :weight, presence: true, numericality: { only_integer: true }
  validates :birthday, presence: true
end
