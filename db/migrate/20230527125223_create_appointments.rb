class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :establishment, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
