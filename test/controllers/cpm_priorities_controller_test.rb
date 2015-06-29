require 'test_helper'

class CpmPrioritiesControllerTest < ActionController::TestCase
  setup do
    @cpm_priority = cpm_priorities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_priorities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_priority" do
    assert_difference('CpmPriority.count') do
      post :create, cpm_priority: { color: @cpm_priority.color, name: @cpm_priority.name }
    end

    assert_redirected_to cpm_priority_path(assigns(:cpm_priority))
  end

  test "should show cpm_priority" do
    get :show, id: @cpm_priority
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_priority
    assert_response :success
  end

  test "should update cpm_priority" do
    patch :update, id: @cpm_priority, cpm_priority: { color: @cpm_priority.color, name: @cpm_priority.name }
    assert_redirected_to cpm_priority_path(assigns(:cpm_priority))
  end

  test "should destroy cpm_priority" do
    assert_difference('CpmPriority.count', -1) do
      delete :destroy, id: @cpm_priority
    end

    assert_redirected_to cpm_priorities_path
  end
end
