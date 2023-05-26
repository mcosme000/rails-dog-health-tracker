class CreateBasics < ActiveRecord::Migration[7.0]
  def change
    create_table :basics do |t|
      t.references :dog, null: false, foreign_key: true
      t.string :type
      t.integer :reminder

      t.timestamps
    end
  end
end
