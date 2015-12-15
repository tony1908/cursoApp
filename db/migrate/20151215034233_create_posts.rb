class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :contenido
      t.string :imagen

      t.timestamps null: false
    end
  end
end
