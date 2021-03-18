class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title,               null:false
      t.text :image,               null:false
      t.integer :animal_type_id,     null: false
      t.references :user,            foreign_key: true
      t.timestamps
    end
  end
end
