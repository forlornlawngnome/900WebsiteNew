json.array!(@sponsor_years) do |sponsor_year|
  json.extract! sponsor_year, :id, :sponsor_id, :year_id, :sponsor_level_id
  json.url sponsor_year_url(sponsor_year, format: :json)
end
