class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.timedate :created_at
      t.timedate :updated_at

      t.timestamps null: false
    end
  end
end
