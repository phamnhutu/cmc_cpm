require 'test_helper'

class CpmTasksControllerTest < ActionController::TestCase
  setup do
    @cpm_task = cpm_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_task" do
    assert_difference('CpmTask.count') do
      post :create, cpm_task: { assigned_to: @cpm_task.assigned_to, cpm_priority_id: @cpm_task.cpm_priority_id, cpm_process_id: @cpm_task.cpm_process_id, cpm_project_id: @cpm_task.cpm_project_id, cpm_user_id: @cpm_task.cpm_user_id, deadline: @cpm_task.deadline, man_hour: @cpm_task.man_hour, name: @cpm_task.name }
    end

    assert_redirected_to cpm_task_path(assigns(:cpm_task))
  end

  test "should show cpm_task" do
    get :show, id: @cpm_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_task
    assert_response :success
  end

  test "should update cpm_task" do
    patch :update, id: @cpm_task, cpm_task: { assigned_to: @cpm_task.assigned_to, cpm_priority_id: @cpm_task.cpm_priority_id, cpm_process_id: @cpm_task.cpm_process_id, cpm_project_id: @cpm_task.cpm_project_id, cpm_user_id: @cpm_task.cpm_user_id, deadline: @cpm_task.deadline, man_hour: @cpm_task.man_hour, name: @cpm_task.name }
    assert_redirected_to cpm_task_path(assigns(:cpm_task))
  end

  test "should destroy cpm_task" do
    assert_difference('CpmTask.count', -1) do
      delete :destroy, id: @cpm_task
    end

    assert_redirected_to cpm_tasks_path
  end
end
