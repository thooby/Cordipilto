require 'test_helper'

class ProfunSuelosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profun_suelos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profun_suelo" do
    assert_difference('ProfunSuelo.count') do
      post :create, :profun_suelo => { }
    end

    assert_redirected_to profun_suelo_path(assigns(:profun_suelo))
  end

  test "should show profun_suelo" do
    get :show, :id => profun_suelos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => profun_suelos(:one).to_param
    assert_response :success
  end

  test "should update profun_suelo" do
    put :update, :id => profun_suelos(:one).to_param, :profun_suelo => { }
    assert_redirected_to profun_suelo_path(assigns(:profun_suelo))
  end

  test "should destroy profun_suelo" do
    assert_difference('ProfunSuelo.count', -1) do
      delete :destroy, :id => profun_suelos(:one).to_param
    end

    assert_redirected_to profun_suelos_path
  end
end
