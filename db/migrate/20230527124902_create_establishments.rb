class CreateEstablishments < ActiveRecord::Migration[7.0]
  def change
    create_table :establishments do |t|
      t.string :name
      t.string :category
      t.string :address
      t.integer :phone_number

      t.timestamps
    end
  end
end
