class CreateHandbooks < ActiveRecord::Migration
  def change
    create_table :handbooks do |t|
      t.text :handbook_link
      t.text :about

      t.timestamps null: false
    end
  end
end
