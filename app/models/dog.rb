class Dog < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :appointments, dependent: :destroy
  has_many :basics
  has_many :documents
  has_many :meals
  has_many :medications
  has_many :poops
  has_many :walks

  has_one_attached :image

  validates :name, presence: true, length: { maximum: 20 }
  validates :breed, presence: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :weight, numericality: { only_integer: true }
end
