class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :summary
      t.datetime :date
      t.string :category

      t.timestamps
    end
  end
end
