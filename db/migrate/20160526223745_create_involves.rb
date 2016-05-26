class CreateInvolves < ActiveRecord::Migration
  def change
    create_table :involves do |t|
      t.text :blurb
      t.integer :order

      t.timestamps null: false
    end
  end
end
