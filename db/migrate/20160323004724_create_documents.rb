class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.date :date_published
      t.text :about
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
