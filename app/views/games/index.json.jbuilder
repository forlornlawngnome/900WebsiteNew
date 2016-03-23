json.array!(@games) do |game|
  json.extract! game, :id, :year_id, :name, :strategy
  json.url game_url(game, format: :json)
end
