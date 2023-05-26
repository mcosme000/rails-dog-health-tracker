class CreatePoops < ActiveRecord::Migration[7.0]
  def change
    create_table :poops do |t|
      t.references :dog, null: false, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
