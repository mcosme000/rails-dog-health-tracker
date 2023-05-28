class Care < ApplicationRecord
  has_many :cares_dogs, dependent: :destroy
  has_many :dogs, through: :cares_dogs

  belongs_to :meal, optional: true
  belongs_to :basic, optional: true
  belongs_to :medication, optional: true
  belongs_to :poop, optional: true
  belongs_to :walk, optional: true

  accepts_nested_attributes_for :cares_dogs
end
