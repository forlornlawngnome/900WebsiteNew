class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :year, index: true, foreign_key: true
      t.string :name
      t.text :strategy

      t.timestamps null: false
    end
  end
end
