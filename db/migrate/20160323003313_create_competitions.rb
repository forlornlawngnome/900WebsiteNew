class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.date :date
      t.references :year, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
