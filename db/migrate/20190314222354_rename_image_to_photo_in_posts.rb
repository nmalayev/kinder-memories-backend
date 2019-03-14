class RenameImageToPhotoInPosts < ActiveRecord::Migration[5.2]
  def change
    rename_column :posts, :image, :photo
  end
end
