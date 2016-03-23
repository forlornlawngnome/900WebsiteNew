json.array!(@sponsor_levels) do |sponsor_level|
  json.extract! sponsor_level, :id, :name
  json.url sponsor_level_url(sponsor_level, format: :json)
end
