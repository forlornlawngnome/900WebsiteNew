class CreateSocialMediaLinks < ActiveRecord::Migration
  def change
    create_table :social_media_links do |t|
      t.string :name
      t.string :icon
      t.text :media_url
      t.integer :order

      t.timestamps null: false
    end
  end
end
