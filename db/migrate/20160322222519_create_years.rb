class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
      t.date :start_date
      t.string :end_date

      t.timestamps null: false
    end
  end
end
