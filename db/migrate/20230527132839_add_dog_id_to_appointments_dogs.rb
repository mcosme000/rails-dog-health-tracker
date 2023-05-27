class AddDogIdToAppointmentsDogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointments_dogs, :dog, null: false, foreign_key: true
  end
end
