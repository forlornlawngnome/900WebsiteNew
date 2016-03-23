json.array!(@documents_people) do |documents_person|
  json.extract! documents_person, :id, :person_id, :document_id
  json.url documents_person_url(documents_person, format: :json)
end
