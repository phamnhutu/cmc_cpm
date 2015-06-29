require 'test_helper'

class CpmCommentsControllerTest < ActionController::TestCase
  setup do
    @cpm_comment = cpm_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_comment" do
    assert_difference('CpmComment.count') do
      post :create, cpm_comment: { attachments: @cpm_comment.attachments, content: @cpm_comment.content, cpm_issue_id: @cpm_comment.cpm_issue_id, cpm_project_id: @cpm_comment.cpm_project_id, cpm_task_id: @cpm_comment.cpm_task_id, cpm_user_id: @cpm_comment.cpm_user_id }
    end

    assert_redirected_to cpm_comment_path(assigns(:cpm_comment))
  end

  test "should show cpm_comment" do
    get :show, id: @cpm_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_comment
    assert_response :success
  end

  test "should update cpm_comment" do
    patch :update, id: @cpm_comment, cpm_comment: { attachments: @cpm_comment.attachments, content: @cpm_comment.content, cpm_issue_id: @cpm_comment.cpm_issue_id, cpm_project_id: @cpm_comment.cpm_project_id, cpm_task_id: @cpm_comment.cpm_task_id, cpm_user_id: @cpm_comment.cpm_user_id }
    assert_redirected_to cpm_comment_path(assigns(:cpm_comment))
  end

  test "should destroy cpm_comment" do
    assert_difference('CpmComment.count', -1) do
      delete :destroy, id: @cpm_comment
    end

    assert_redirected_to cpm_comments_path
  end
end
