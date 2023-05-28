class CreateWalks < ActiveRecord::Migration[7.0]
  def change
    create_table :walks do |t|
      t.string :category
      t.integer :distance
      t.integer :length

      t.timestamps
    end
  end
end
