require 'test_helper'

class SteinsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stein" do
    assert_difference('Stein.count') do
      post :create, :stein => { }
    end

    assert_redirected_to stein_path(assigns(:stein))
  end

  test "should show stein" do
    get :show, :id => steins(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => steins(:one).to_param
    assert_response :success
  end

  test "should update stein" do
    put :update, :id => steins(:one).to_param, :stein => { }
    assert_redirected_to stein_path(assigns(:stein))
  end

  test "should destroy stein" do
    assert_difference('Stein.count', -1) do
      delete :destroy, :id => steins(:one).to_param
    end

    assert_redirected_to steins_path
  end
end
