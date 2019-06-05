class AddCommentCountToDeals < ActiveRecord::Migration[5.1]
  def change
    add_column :deals, :comments_count, :integer
  end
end
