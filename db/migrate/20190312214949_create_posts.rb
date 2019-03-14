class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :post_type
      t.string :title
      t.text :description
      t.text :letter, default: ""
      t.string :image, default: ""
      t.string :video, default: ""
      t.references :timeline, foreign_key: true
      t.references :user, foreign_key: true
      t.string :poster

      t.timestamps
    end
  end
end
