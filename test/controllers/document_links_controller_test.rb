require 'test_helper'

class DocumentLinksControllerTest < ActionController::TestCase
  setup do
    @document_link = document_links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:document_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create document_link" do
    assert_difference('DocumentLink.count') do
      post :create, document_link: { doc_link: @document_link.doc_link, document_id: @document_link.document_id, name: @document_link.name }
    end

    assert_redirected_to document_link_path(assigns(:document_link))
  end

  test "should show document_link" do
    get :show, id: @document_link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @document_link
    assert_response :success
  end

  test "should update document_link" do
    patch :update, id: @document_link, document_link: { doc_link: @document_link.doc_link, document_id: @document_link.document_id, name: @document_link.name }
    assert_redirected_to document_link_path(assigns(:document_link))
  end

  test "should destroy document_link" do
    assert_difference('DocumentLink.count', -1) do
      delete :destroy, id: @document_link
    end

    assert_redirected_to document_links_path
  end
end
