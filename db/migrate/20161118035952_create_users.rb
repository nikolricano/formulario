class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :campo1
      t.string :campo2
      t.string :campo3
      t.string :campo4
      t.string :campo5
      t.string :campo6
      t.string :campo7
      t.string :campo8
      t.string :campo9

      t.timestamps null: false
    end
  end
end
