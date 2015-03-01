class ChangePostStatusDefault < ActiveRecord::Migration
  def change
    change_column_default :posts, :status, 2
  end
end
