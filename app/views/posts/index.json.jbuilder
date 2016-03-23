json.array!(@posts) do |post|
  json.extract! post, :id, :year_id, :date_published, :title, :active
  json.url post_url(post, format: :json)
end
