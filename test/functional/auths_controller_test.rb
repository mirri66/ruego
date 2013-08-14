require 'test_helper'

class AuthsControllerTest < ActionController::TestCase
  setup do
    @auth = auths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auth" do
    assert_difference('Auth.count') do
      post :create, auth: { twitter: @auth.twitter }
    end

    assert_redirected_to auth_path(assigns(:auth))
  end

  test "should show auth" do
    get :show, id: @auth
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auth
    assert_response :success
  end

  test "should update auth" do
    put :update, id: @auth, auth: { twitter: @auth.twitter }
    assert_redirected_to auth_path(assigns(:auth))
  end

  test "should destroy auth" do
    assert_difference('Auth.count', -1) do
      delete :destroy, id: @auth
    end

    assert_redirected_to auths_path
  end
end
