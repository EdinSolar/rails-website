class RenameTypeColumnInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :type, :status
  end
end
