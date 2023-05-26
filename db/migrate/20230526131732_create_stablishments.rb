class CreateStablishments < ActiveRecord::Migration[7.0]
  def change
    create_table :stablishments do |t|
      t.string :type
      t.string :name
      t.string :address
      t.integer :phone_number

      t.timestamps
    end
  end
end
