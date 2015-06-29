require 'test_helper'

class CpmTeamsControllerTest < ActionController::TestCase
  setup do
    @cpm_team = cpm_teams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_teams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_team" do
    assert_difference('CpmTeam.count') do
      post :create, cpm_team: { name: @cpm_team.name, status: @cpm_team.status }
    end

    assert_redirected_to cpm_team_path(assigns(:cpm_team))
  end

  test "should show cpm_team" do
    get :show, id: @cpm_team
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_team
    assert_response :success
  end

  test "should update cpm_team" do
    patch :update, id: @cpm_team, cpm_team: { name: @cpm_team.name, status: @cpm_team.status }
    assert_redirected_to cpm_team_path(assigns(:cpm_team))
  end

  test "should destroy cpm_team" do
    assert_difference('CpmTeam.count', -1) do
      delete :destroy, id: @cpm_team
    end

    assert_redirected_to cpm_teams_path
  end
end
