class CreateSponsorLevels < ActiveRecord::Migration
  def change
    create_table :sponsor_levels do |t|
      t.string :name
      t.integer :order

      t.timestamps null: false
    end
  end
end
