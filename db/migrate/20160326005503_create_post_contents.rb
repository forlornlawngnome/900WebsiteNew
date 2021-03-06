class CreatePostContents < ActiveRecord::Migration
  def change
    create_table :post_contents do |t|
      t.references :post, index: true, foreign_key: true
      t.references :content_type, index: true, foreign_key: true
      t.text :body
      t.text :supplemental 
      t.integer :post_order

      t.timestamps null: false
    end
  end
end
