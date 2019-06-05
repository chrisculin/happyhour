class CreateBars < ActiveRecord::Migration[5.1]
  def change
    create_table :bars do |t|
      t.string :address
      t.string :name
      t.string :yelp_link
      t.string :phone_number

      t.timestamps
    end
  end
end
