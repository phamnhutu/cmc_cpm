require 'test_helper'

class CpmProcessesControllerTest < ActionController::TestCase
  setup do
    @cpm_process = cpm_processes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_processes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_process" do
    assert_difference('CpmProcess.count') do
      post :create, cpm_process: { name: @cpm_process.name }
    end

    assert_redirected_to cpm_process_path(assigns(:cpm_process))
  end

  test "should show cpm_process" do
    get :show, id: @cpm_process
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_process
    assert_response :success
  end

  test "should update cpm_process" do
    patch :update, id: @cpm_process, cpm_process: { name: @cpm_process.name }
    assert_redirected_to cpm_process_path(assigns(:cpm_process))
  end

  test "should destroy cpm_process" do
    assert_difference('CpmProcess.count', -1) do
      delete :destroy, id: @cpm_process
    end

    assert_redirected_to cpm_processes_path
  end
end
