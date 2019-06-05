class AddAddressLongitudeToBar < ActiveRecord::Migration[5.1]
  def change
    add_column :bars, :address_longitude, :float
  end
end
