class AddLikeCountToDeals < ActiveRecord::Migration[5.1]
  def change
    add_column :deals, :likes_count, :integer
  end
end
