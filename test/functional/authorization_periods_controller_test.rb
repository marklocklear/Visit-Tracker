require 'test_helper'

class AuthorizationPeriodsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authorization_periods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create authorization_period" do
    assert_difference('AuthorizationPeriod.count') do
      post :create, :authorization_period => { }
    end

    assert_redirected_to authorization_period_path(assigns(:authorization_period))
  end

  test "should show authorization_period" do
    get :show, :id => authorization_periods(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => authorization_periods(:one).to_param
    assert_response :success
  end

  test "should update authorization_period" do
    put :update, :id => authorization_periods(:one).to_param, :authorization_period => { }
    assert_redirected_to authorization_period_path(assigns(:authorization_period))
  end

  test "should destroy authorization_period" do
    assert_difference('AuthorizationPeriod.count', -1) do
      delete :destroy, :id => authorization_periods(:one).to_param
    end

    assert_redirected_to authorization_periods_path
  end
end
