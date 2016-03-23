json.array!(@people) do |person|
  json.extract! person, :id, :name, :role_id, :image, :year_start, :year_end
  json.url person_url(person, format: :json)
end
