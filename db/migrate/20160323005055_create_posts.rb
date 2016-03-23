class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :year, index: true, foreign_key: true
      t.date :date_published
      t.string :title
      t.boolean :active

      t.timestamps null: false
    end
  end
end
