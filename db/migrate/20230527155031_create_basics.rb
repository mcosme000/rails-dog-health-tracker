class CreateBasics < ActiveRecord::Migration[7.0]
  def change
    create_table :basics do |t|
      t.string :category
      t.integer :reminder

      t.timestamps
    end
  end
end
