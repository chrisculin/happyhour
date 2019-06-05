class AddAddressFormattedAddressToBar < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :address_formatted_address, :string
  end
end
