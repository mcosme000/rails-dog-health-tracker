class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    create_table :documents do |t|
      t.references :dog, null: false, foreign_key: true
      t.string :name
      t.string :type
      t.string :image

      t.timestamps
    end
  end
end
