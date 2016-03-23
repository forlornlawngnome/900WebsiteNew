json.array!(@post_contents) do |post_content|
  json.extract! post_content, :id, :post_id, :content_type_id, :body, :order
  json.url post_content_url(post_content, format: :json)
end
