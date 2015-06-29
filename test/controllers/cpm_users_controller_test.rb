require 'test_helper'

class CpmUsersControllerTest < ActionController::TestCase
  setup do
    @cpm_user = cpm_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cpm_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cpm_user" do
    assert_difference('CpmUser.count') do
      post :create, cpm_user: { activation_digest: @cpm_user.activation_digest, address: @cpm_user.address, cpm_team_id: @cpm_user.cpm_team_id, email: @cpm_user.email, facebook_url: @cpm_user.facebook_url, first_name: @cpm_user.first_name, gender: @cpm_user.gender, last_name: @cpm_user.last_name, pasword_digest: @cpm_user.pasword_digest, permit: @cpm_user.permit, phone_number: @cpm_user.phone_number, remember_digest: @cpm_user.remember_digest, status: @cpm_user.status, username: @cpm_user.username, your_story: @cpm_user.your_story }
    end

    assert_redirected_to cpm_user_path(assigns(:cpm_user))
  end

  test "should show cpm_user" do
    get :show, id: @cpm_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cpm_user
    assert_response :success
  end

  test "should update cpm_user" do
    patch :update, id: @cpm_user, cpm_user: { activation_digest: @cpm_user.activation_digest, address: @cpm_user.address, cpm_team_id: @cpm_user.cpm_team_id, email: @cpm_user.email, facebook_url: @cpm_user.facebook_url, first_name: @cpm_user.first_name, gender: @cpm_user.gender, last_name: @cpm_user.last_name, pasword_digest: @cpm_user.pasword_digest, permit: @cpm_user.permit, phone_number: @cpm_user.phone_number, remember_digest: @cpm_user.remember_digest, status: @cpm_user.status, username: @cpm_user.username, your_story: @cpm_user.your_story }
    assert_redirected_to cpm_user_path(assigns(:cpm_user))
  end

  test "should destroy cpm_user" do
    assert_difference('CpmUser.count', -1) do
      delete :destroy, id: @cpm_user
    end

    assert_redirected_to cpm_users_path
  end
end
