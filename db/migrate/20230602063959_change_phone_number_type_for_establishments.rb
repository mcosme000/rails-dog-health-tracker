class ChangePhoneNumberTypeForEstablishments < ActiveRecord::Migration[7.0]
  def change
    remove_column :establishments, :phone_number
    add_column :establishments, :phone_number, :string
  end
end
