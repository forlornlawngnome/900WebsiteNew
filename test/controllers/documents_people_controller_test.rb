require 'test_helper'

class DocumentsPeopleControllerTest < ActionController::TestCase
  setup do
    @documents_person = documents_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:documents_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create documents_person" do
    assert_difference('DocumentsPerson.count') do
      post :create, documents_person: { document_id: @documents_person.document_id, person_id: @documents_person.person_id }
    end

    assert_redirected_to documents_person_path(assigns(:documents_person))
  end

  test "should show documents_person" do
    get :show, id: @documents_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @documents_person
    assert_response :success
  end

  test "should update documents_person" do
    patch :update, id: @documents_person, documents_person: { document_id: @documents_person.document_id, person_id: @documents_person.person_id }
    assert_redirected_to documents_person_path(assigns(:documents_person))
  end

  test "should destroy documents_person" do
    assert_difference('DocumentsPerson.count', -1) do
      delete :destroy, id: @documents_person
    end

    assert_redirected_to documents_people_path
  end
end
