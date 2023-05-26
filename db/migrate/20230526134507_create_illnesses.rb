class CreateIllnesses < ActiveRecord::Migration[7.0]
  def change
    create_table :illnesses do |t|
      t.references :dog, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
