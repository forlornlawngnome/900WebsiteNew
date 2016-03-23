json.array!(@social_media) do |social_medium|
  json.extract! social_medium, :id, :name, :icon, :url
  json.url social_medium_url(social_medium, format: :json)
end
