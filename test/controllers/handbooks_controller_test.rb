require 'test_helper'

class HandbooksControllerTest < ActionController::TestCase
  setup do
    @handbook = handbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:handbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create handbook" do
    assert_difference('Handbook.count') do
      post :create, handbook: { about: @handbook.about, handbook_link: @handbook.handbook_link }
    end

    assert_redirected_to handbook_path(assigns(:handbook))
  end

  test "should show handbook" do
    get :show, id: @handbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @handbook
    assert_response :success
  end

  test "should update handbook" do
    patch :update, id: @handbook, handbook: { about: @handbook.about, handbook_link: @handbook.handbook_link }
    assert_redirected_to handbook_path(assigns(:handbook))
  end

  test "should destroy handbook" do
    assert_difference('Handbook.count', -1) do
      delete :destroy, id: @handbook
    end

    assert_redirected_to handbooks_path
  end
end
