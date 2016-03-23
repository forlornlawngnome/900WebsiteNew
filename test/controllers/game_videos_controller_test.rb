require 'test_helper'

class GameVideosControllerTest < ActionController::TestCase
  setup do
    @game_video = game_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_video" do
    assert_difference('GameVideo.count') do
      post :create, game_video: { game_id: @game_video.game_id, link: @game_video.link, title: @game_video.title }
    end

    assert_redirected_to game_video_path(assigns(:game_video))
  end

  test "should show game_video" do
    get :show, id: @game_video
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_video
    assert_response :success
  end

  test "should update game_video" do
    patch :update, id: @game_video, game_video: { game_id: @game_video.game_id, link: @game_video.link, title: @game_video.title }
    assert_redirected_to game_video_path(assigns(:game_video))
  end

  test "should destroy game_video" do
    assert_difference('GameVideo.count', -1) do
      delete :destroy, id: @game_video
    end

    assert_redirected_to game_videos_path
  end
end
