json.array!(@about_contents) do |about_content|
  json.extract! about_content, :id, :name, :title, :content
  json.url about_content_url(about_content, format: :json)
end
