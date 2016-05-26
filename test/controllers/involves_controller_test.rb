require 'test_helper'

class InvolvesControllerTest < ActionController::TestCase
  setup do
    @involf = involves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:involves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create involf" do
    assert_difference('Involve.count') do
      post :create, involf: { blurb: @involf.blurb, order: @involf.order }
    end

    assert_redirected_to involf_path(assigns(:involf))
  end

  test "should show involf" do
    get :show, id: @involf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @involf
    assert_response :success
  end

  test "should update involf" do
    patch :update, id: @involf, involf: { blurb: @involf.blurb, order: @involf.order }
    assert_redirected_to involf_path(assigns(:involf))
  end

  test "should destroy involf" do
    assert_difference('Involve.count', -1) do
      delete :destroy, id: @involf
    end

    assert_redirected_to involves_path
  end
end
