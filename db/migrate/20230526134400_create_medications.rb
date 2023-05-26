class CreateMedications < ActiveRecord::Migration[7.0]
  def change
    create_table :medications do |t|
      t.references :dog, null: false, foreign_key: true
      t.string :type
      t.time :time
      t.integer :reminder

      t.timestamps
    end
  end
end
