class CreateCares < ActiveRecord::Migration[7.0]
  def change
    create_table :cares do |t|
      t.references :meal, foreign_key: true
      t.references :basic, foreign_key: true
      t.references :medication, foreign_key: true
      t.references :poop, foreign_key: true
      t.references :walk, foreign_key: true

      t.timestamps
    end
  end
end
