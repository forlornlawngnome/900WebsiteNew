json.array!(@forms) do |form|
  json.extract! form, :id, :name, :form_url
  json.url form_url(form, format: :json)
end
