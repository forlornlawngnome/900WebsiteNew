class CreateAwardsCompetitions < ActiveRecord::Migration
  def change
    create_table :awards_competitions do |t|
      t.references :competition, index: true, foreign_key: true
      t.references :award, index: true, foreign_key: true
      t.text :blurb

      t.timestamps null: false
    end
  end
end
