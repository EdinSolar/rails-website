class AddUserRefToPosts < ActiveRecord::Migration
  def change
    add_foreign_key :posts, :users, on_delete: :cascade
  end
end
