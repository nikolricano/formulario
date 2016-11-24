class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :age
      t.boolean :agree

      t.timestamps null: false
    end
  end
end
