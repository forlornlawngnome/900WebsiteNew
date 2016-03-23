class CreateDocumentLinks < ActiveRecord::Migration
  def change
    create_table :document_links do |t|
      t.references :document, index: true, foreign_key: true
      t.text :doc_link
      t.string :name

      t.timestamps null: false
    end
  end
end
