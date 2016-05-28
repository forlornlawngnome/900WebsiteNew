require 'test_helper'

class AboutPhotosControllerTest < ActionController::TestCase
  setup do
    @about_photo = about_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_photo" do
    assert_difference('AboutPhoto.count') do
      post :create, about_photo: { image: @about_photo.image, name: @about_photo.name }
    end

    assert_redirected_to about_photo_path(assigns(:about_photo))
  end

  test "should show about_photo" do
    get :show, id: @about_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @about_photo
    assert_response :success
  end

  test "should update about_photo" do
    patch :update, id: @about_photo, about_photo: { image: @about_photo.image, name: @about_photo.name }
    assert_redirected_to about_photo_path(assigns(:about_photo))
  end

  test "should destroy about_photo" do
    assert_difference('AboutPhoto.count', -1) do
      delete :destroy, id: @about_photo
    end

    assert_redirected_to about_photos_path
  end
end
