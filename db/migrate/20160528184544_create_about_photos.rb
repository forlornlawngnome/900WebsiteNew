class CreateAboutPhotos < ActiveRecord::Migration
  def change
    create_table :about_photos do |t|
      t.string :name
      t.text :image

      t.timestamps null: false
    end
  end
end
