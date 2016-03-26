json.array!(@handbooks) do |handbook|
  json.extract! handbook, :id, :handbook_link, :about
  json.url handbook_url(handbook, format: :json)
end
