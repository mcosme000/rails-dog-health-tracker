class CreatePoops < ActiveRecord::Migration[7.0]
  def change
    create_table :poops do |t|
      t.string :category

      t.timestamps
    end
  end
end
