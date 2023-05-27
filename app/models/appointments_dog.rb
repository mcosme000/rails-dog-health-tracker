class AppointmentsDog < ApplicationRecord
  belongs_to :appointment
  belongs_to :dog
end
