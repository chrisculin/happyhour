class AddPhotoCountToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :photos_count, :integer
  end
end
