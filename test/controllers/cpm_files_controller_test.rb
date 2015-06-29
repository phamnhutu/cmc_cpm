require 'test_helper'

class CpmFilesControllerTest < ActionController::TestCase
  setup do
    @cpm_file = cpm_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_file" do
    assert_difference('CpmFile.count') do
      post :create, cpm_file: { cpm_comment_id: @cpm_file.cpm_comment_id, cpm_issue_id: @cpm_file.cpm_issue_id, cpm_task_id: @cpm_file.cpm_task_id, cpm_user_id: @cpm_file.cpm_user_id, file_path: @cpm_file.file_path }
    end

    assert_redirected_to cpm_file_path(assigns(:cpm_file))
  end

  test "should show cpm_file" do
    get :show, id: @cpm_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_file
    assert_response :success
  end

  test "should update cpm_file" do
    patch :update, id: @cpm_file, cpm_file: { cpm_comment_id: @cpm_file.cpm_comment_id, cpm_issue_id: @cpm_file.cpm_issue_id, cpm_task_id: @cpm_file.cpm_task_id, cpm_user_id: @cpm_file.cpm_user_id, file_path: @cpm_file.file_path }
    assert_redirected_to cpm_file_path(assigns(:cpm_file))
  end

  test "should destroy cpm_file" do
    assert_difference('CpmFile.count', -1) do
      delete :destroy, id: @cpm_file
    end

    assert_redirected_to cpm_files_path
  end
end
