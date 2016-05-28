json.array!(@about_photos) do |about_photo|
  json.extract! about_photo, :id, :name, :image
  json.url about_photo_url(about_photo, format: :json)
end
