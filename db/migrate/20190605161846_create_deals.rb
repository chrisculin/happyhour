class CreateDeals < ActiveRecord::Migration[5.1]
  def change
    create_table :deals do |t|
      t.integer :bar_id
      t.string :day_of_week
      t.string :deal_level
      t.string :description
      t.time :start_time
      t.string :end_time
      t.string :deal_tagline
      t.integer :rating
      t.string :verification_status

      t.timestamps
    end
  end
end
