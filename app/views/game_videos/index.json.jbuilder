json.array!(@game_videos) do |game_video|
  json.extract! game_video, :id, :game_id, :title, :link
  json.url game_video_url(game_video, format: :json)
end
