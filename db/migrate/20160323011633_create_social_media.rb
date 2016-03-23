class CreateSocialMedia < ActiveRecord::Migration
  def change
    create_table :social_media do |t|
      t.string :name
      t.string :icon
      t.text :url
      t.integer :order

      t.timestamps null: false
    end
  end
end
