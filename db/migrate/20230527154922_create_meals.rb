class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :category
      t.integer :quantity
      t.time :time

      t.timestamps
    end
  end
end
