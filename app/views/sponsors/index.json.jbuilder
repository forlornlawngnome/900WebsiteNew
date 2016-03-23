json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :name, :logo_link, :sponsor_url, :active
  json.url sponsor_url(sponsor, format: :json)
end
