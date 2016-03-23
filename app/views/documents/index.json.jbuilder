json.array!(@documents) do |document|
  json.extract! document, :id, :name, :date_published, :about, :category_id
  json.url document_url(document, format: :json)
end
