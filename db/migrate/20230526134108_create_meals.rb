class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.references :dog, null: false, foreign_key: true
      t.string :type
      t.integer :quantity
      t.time :time
      
      t.timestamps
    end
  end
end
