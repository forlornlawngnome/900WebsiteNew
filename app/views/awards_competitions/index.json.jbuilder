json.array!(@awards_competitions) do |awards_competition|
  json.extract! awards_competition, :id, :competition_id, :award_id, :blurb
  json.url awards_competition_url(awards_competition, format: :json)
end
