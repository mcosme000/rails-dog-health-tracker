class CreateWalks < ActiveRecord::Migration[7.0]
  def change
    create_table :walks do |t|
      t.references :dog, null: false, foreign_key: true
      t.string :type
      t.integer :distance
      t.integer :time

      t.timestamps
    end
  end
end
