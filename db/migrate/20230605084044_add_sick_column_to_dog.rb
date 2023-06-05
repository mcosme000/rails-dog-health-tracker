class AddSickColumnToDog < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :sick, :boolean, default: false
  end
end
