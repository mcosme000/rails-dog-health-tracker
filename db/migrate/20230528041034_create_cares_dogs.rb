class CreateCaresDogs < ActiveRecord::Migration[7.0]
  def change
    create_table :cares_dogs do |t|
      t.references :dog, null: false, foreign_key: true
      t.references :care, null: false, foreign_key: true
      t.timestamps
    end
  end
end
