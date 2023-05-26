class Appointment < ApplicationRecord
  belongs_to :dog
  belongs_to :stablishment

  validates :description, length: { maximum: 500 }
end
