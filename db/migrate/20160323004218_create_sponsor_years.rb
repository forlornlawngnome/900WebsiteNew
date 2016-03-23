class CreateSponsorYears < ActiveRecord::Migration
  def change
    create_table :sponsor_years do |t|
      t.references :sponsor, index: true, foreign_key: true
      t.references :year, index: true, foreign_key: true
      t.references :sponsor_level, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
