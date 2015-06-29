require 'test_helper'

class CpmHistoriesControllerTest < ActionController::TestCase
  setup do
    @cpm_history = cpm_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_history" do
    assert_difference('CpmHistory.count') do
      post :create, cpm_history: { cpm_issue_id: @cpm_history.cpm_issue_id, cpm_project_id: @cpm_history.cpm_project_id, cpm_task_id: @cpm_history.cpm_task_id, cpm_user_id: @cpm_history.cpm_user_id, name: @cpm_history.name }
    end

    assert_redirected_to cpm_history_path(assigns(:cpm_history))
  end

  test "should show cpm_history" do
    get :show, id: @cpm_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_history
    assert_response :success
  end

  test "should update cpm_history" do
    patch :update, id: @cpm_history, cpm_history: { cpm_issue_id: @cpm_history.cpm_issue_id, cpm_project_id: @cpm_history.cpm_project_id, cpm_task_id: @cpm_history.cpm_task_id, cpm_user_id: @cpm_history.cpm_user_id, name: @cpm_history.name }
    assert_redirected_to cpm_history_path(assigns(:cpm_history))
  end

  test "should destroy cpm_history" do
    assert_difference('CpmHistory.count', -1) do
      delete :destroy, id: @cpm_history
    end

    assert_redirected_to cpm_histories_path
  end
end
