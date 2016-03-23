require 'test_helper'

class SponsorYearsControllerTest < ActionController::TestCase
  setup do
    @sponsor_year = sponsor_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sponsor_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sponsor_year" do
    assert_difference('SponsorYear.count') do
      post :create, sponsor_year: { sponsor_id: @sponsor_year.sponsor_id, sponsor_level_id: @sponsor_year.sponsor_level_id, year_id: @sponsor_year.year_id }
    end

    assert_redirected_to sponsor_year_path(assigns(:sponsor_year))
  end

  test "should show sponsor_year" do
    get :show, id: @sponsor_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sponsor_year
    assert_response :success
  end

  test "should update sponsor_year" do
    patch :update, id: @sponsor_year, sponsor_year: { sponsor_id: @sponsor_year.sponsor_id, sponsor_level_id: @sponsor_year.sponsor_level_id, year_id: @sponsor_year.year_id }
    assert_redirected_to sponsor_year_path(assigns(:sponsor_year))
  end

  test "should destroy sponsor_year" do
    assert_difference('SponsorYear.count', -1) do
      delete :destroy, id: @sponsor_year
    end

    assert_redirected_to sponsor_years_path
  end
end
