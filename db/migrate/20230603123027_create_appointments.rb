class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :establishment, foreign_key: true
      t.references :dog, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
