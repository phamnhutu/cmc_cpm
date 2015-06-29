require 'test_helper'

class CpmProjectsControllerTest < ActionController::TestCase
  setup do
    @cpm_project = cpm_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_project" do
    assert_difference('CpmProject.count') do
      post :create, cpm_project: { cpm_user_id: @cpm_project.cpm_user_id, end_date: @cpm_project.end_date, name: @cpm_project.name, start_date: @cpm_project.start_date, status: @cpm_project.status }
    end

    assert_redirected_to cpm_project_path(assigns(:cpm_project))
  end

  test "should show cpm_project" do
    get :show, id: @cpm_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_project
    assert_response :success
  end

  test "should update cpm_project" do
    patch :update, id: @cpm_project, cpm_project: { cpm_user_id: @cpm_project.cpm_user_id, end_date: @cpm_project.end_date, name: @cpm_project.name, start_date: @cpm_project.start_date, status: @cpm_project.status }
    assert_redirected_to cpm_project_path(assigns(:cpm_project))
  end

  test "should destroy cpm_project" do
    assert_difference('CpmProject.count', -1) do
      delete :destroy, id: @cpm_project
    end

    assert_redirected_to cpm_projects_path
  end
end
