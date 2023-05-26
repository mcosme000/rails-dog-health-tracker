class AddColumnsToDogs < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :weight, :integer
    add_column :dogs, :birthday, :date
    add_column :dogs, :image, :string
  end
end
