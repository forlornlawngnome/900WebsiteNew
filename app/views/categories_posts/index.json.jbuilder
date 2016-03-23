json.array!(@categories_posts) do |categories_post|
  json.extract! categories_post, :id, :post_id, :category_id
  json.url categories_post_url(categories_post, format: :json)
end
