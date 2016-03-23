json.array!(@years) do |year|
  json.extract! year, :id, :start_date, :end_date
  json.url year_url(year, format: :json)
end
