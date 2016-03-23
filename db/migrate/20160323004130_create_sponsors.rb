class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :logo_link
      t.text :sponsor_url
      t.boolean :active

      t.timestamps null: false
    end
  end
end
