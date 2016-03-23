json.array!(@robots) do |robot|
  json.extract! robot, :id, :name, :descripton, :image
  json.url robot_url(robot, format: :json)
end
