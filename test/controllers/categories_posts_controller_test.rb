require 'test_helper'

class CategoriesPostsControllerTest < ActionController::TestCase
  setup do
    @categories_post = categories_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categories_post" do
    assert_difference('CategoriesPost.count') do
      post :create, categories_post: { category_id: @categories_post.category_id, post_id: @categories_post.post_id }
    end

    assert_redirected_to categories_post_path(assigns(:categories_post))
  end

  test "should show categories_post" do
    get :show, id: @categories_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categories_post
    assert_response :success
  end

  test "should update categories_post" do
    patch :update, id: @categories_post, categories_post: { category_id: @categories_post.category_id, post_id: @categories_post.post_id }
    assert_redirected_to categories_post_path(assigns(:categories_post))
  end

  test "should destroy categories_post" do
    assert_difference('CategoriesPost.count', -1) do
      delete :destroy, id: @categories_post
    end

    assert_redirected_to categories_posts_path
  end
end
