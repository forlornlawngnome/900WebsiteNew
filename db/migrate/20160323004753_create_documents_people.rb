class CreateDocumentsPeople < ActiveRecord::Migration
  def change
    create_table :documents_people do |t|
      t.references :person, index: true, foreign_key: true
      t.references :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
