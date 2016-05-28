class CreateAboutContents < ActiveRecord::Migration
  def change
    create_table :about_contents do |t|
      t.string :name
      t.text :title
      t.text :content

      t.timestamps null: false
    end
  end
end
