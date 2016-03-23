require 'test_helper'

class SponsorLevelsControllerTest < ActionController::TestCase
  setup do
    @sponsor_level = sponsor_levels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsor_levels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sponsor_level" do
    assert_difference('SponsorLevel.count') do
      post :create, sponsor_level: { name: @sponsor_level.name }
    end

    assert_redirected_to sponsor_level_path(assigns(:sponsor_level))
  end

  test "should show sponsor_level" do
    get :show, id: @sponsor_level
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sponsor_level
    assert_response :success
  end

  test "should update sponsor_level" do
    patch :update, id: @sponsor_level, sponsor_level: { name: @sponsor_level.name }
    assert_redirected_to sponsor_level_path(assigns(:sponsor_level))
  end

  test "should destroy sponsor_level" do
    assert_difference('SponsorLevel.count', -1) do
      delete :destroy, id: @sponsor_level
    end

    assert_redirected_to sponsor_levels_path
  end
end
