json.array!(@document_links) do |document_link|
  json.extract! document_link, :id, :document_id, :doc_link, :name
  json.url document_link_url(document_link, format: :json)
end
