json.array!(@competitions) do |competition|
  json.extract! competition, :id, :name, :date, :year_id
  json.url competition_url(competition, format: :json)
end
