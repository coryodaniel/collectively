class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.datetime :created_at
      t.datetime :update_at
    
      t.timestamps
    end

    create_table :page_views do |t|
      t.string :ip
      t.references :post
      t.datetime :created_at
    end
  end
end
