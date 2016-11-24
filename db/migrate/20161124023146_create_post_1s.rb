class CreatePost1s < ActiveRecord::Migration
  def change
    create_table :post_1s do |t|
      t.string :title
      t.text :content
      t.integer :age

      t.timestamps null: false
    end
  end
end
