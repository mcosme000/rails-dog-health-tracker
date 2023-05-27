class CreateAppointmentsDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments_dogs do |t|

      t.timestamps
    end
  end
end
