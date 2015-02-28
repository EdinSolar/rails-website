class GivePostTypeDefaultValue < ActiveRecord::Migration
  def change
    change_column_default :posts, :type, 0
  end
end
