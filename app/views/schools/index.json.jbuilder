json.array!(@schools) do |school|
  json.extract! school, :id, :name, :visible
  json.url school_url(school, format: :json)
end
