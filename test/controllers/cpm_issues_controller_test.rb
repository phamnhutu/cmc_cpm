require 'test_helper'

class CpmIssuesControllerTest < ActionController::TestCase
  setup do
    @cpm_issue = cpm_issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_issue" do
    assert_difference('CpmIssue.count') do
      post :create, cpm_issue: { assigned_to: @cpm_issue.assigned_to, cpm_priority_id: @cpm_issue.cpm_priority_id, cpm_process_id: @cpm_issue.cpm_process_id, cpm_project_id: @cpm_issue.cpm_project_id, cpm_status: @cpm_issue.cpm_status, cpm_type: @cpm_issue.cpm_type, cpm_user_id: @cpm_issue.cpm_user_id, deadline: @cpm_issue.deadline, description: @cpm_issue.description, man_hour: @cpm_issue.man_hour, name: @cpm_issue.name }
    end

    assert_redirected_to cpm_issue_path(assigns(:cpm_issue))
  end

  test "should show cpm_issue" do
    get :show, id: @cpm_issue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_issue
    assert_response :success
  end

  test "should update cpm_issue" do
    patch :update, id: @cpm_issue, cpm_issue: { assigned_to: @cpm_issue.assigned_to, cpm_priority_id: @cpm_issue.cpm_priority_id, cpm_process_id: @cpm_issue.cpm_process_id, cpm_project_id: @cpm_issue.cpm_project_id, cpm_status: @cpm_issue.cpm_status, cpm_type: @cpm_issue.cpm_type, cpm_user_id: @cpm_issue.cpm_user_id, deadline: @cpm_issue.deadline, description: @cpm_issue.description, man_hour: @cpm_issue.man_hour, name: @cpm_issue.name }
    assert_redirected_to cpm_issue_path(assigns(:cpm_issue))
  end

  test "should destroy cpm_issue" do
    assert_difference('CpmIssue.count', -1) do
      delete :destroy, id: @cpm_issue
    end

    assert_redirected_to cpm_issues_path
  end
end
