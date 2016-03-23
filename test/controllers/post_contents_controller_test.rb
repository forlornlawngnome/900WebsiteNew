require 'test_helper'

class PostContentsControllerTest < ActionController::TestCase
  setup do
    @post_content = post_contents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_contents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_content" do
    assert_difference('PostContent.count') do
      post :create, post_content: { body: @post_content.body, content_type_id: @post_content.content_type_id, order: @post_content.order, post_id: @post_content.post_id }
    end

    assert_redirected_to post_content_path(assigns(:post_content))
  end

  test "should show post_content" do
    get :show, id: @post_content
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post_content
    assert_response :success
  end

  test "should update post_content" do
    patch :update, id: @post_content, post_content: { body: @post_content.body, content_type_id: @post_content.content_type_id, order: @post_content.order, post_id: @post_content.post_id }
    assert_redirected_to post_content_path(assigns(:post_content))
  end

  test "should destroy post_content" do
    assert_difference('PostContent.count', -1) do
      delete :destroy, id: @post_content
    end

    assert_redirected_to post_contents_path
  end
end
