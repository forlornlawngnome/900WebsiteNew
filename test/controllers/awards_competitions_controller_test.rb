require 'test_helper'

class AwardsCompetitionsControllerTest < ActionController::TestCase
  setup do
    @awards_competition = awards_competitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:awards_competitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create awards_competition" do
    assert_difference('AwardsCompetition.count') do
      post :create, awards_competition: { award_id: @awards_competition.award_id, blurb: @awards_competition.blurb, competition_id: @awards_competition.competition_id }
    end

    assert_redirected_to awards_competition_path(assigns(:awards_competition))
  end

  test "should show awards_competition" do
    get :show, id: @awards_competition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @awards_competition
    assert_response :success
  end

  test "should update awards_competition" do
    patch :update, id: @awards_competition, awards_competition: { award_id: @awards_competition.award_id, blurb: @awards_competition.blurb, competition_id: @awards_competition.competition_id }
    assert_redirected_to awards_competition_path(assigns(:awards_competition))
  end

  test "should destroy awards_competition" do
    assert_difference('AwardsCompetition.count', -1) do
      delete :destroy, id: @awards_competition
    end

    assert_redirected_to awards_competitions_path
  end
end
