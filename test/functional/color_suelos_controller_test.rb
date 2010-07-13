require 'test_helper'

class ColorSuelosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:color_suelos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create color_suelo" do
    assert_difference('ColorSuelo.count') do
      post :create, :color_suelo => { }
    end

    assert_redirected_to color_suelo_path(assigns(:color_suelo))
  end

  test "should show color_suelo" do
    get :show, :id => color_suelos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => color_suelos(:one).to_param
    assert_response :success
  end

  test "should update color_suelo" do
    put :update, :id => color_suelos(:one).to_param, :color_suelo => { }
    assert_redirected_to color_suelo_path(assigns(:color_suelo))
  end

  test "should destroy color_suelo" do
    assert_difference('ColorSuelo.count', -1) do
      delete :destroy, :id => color_suelos(:one).to_param
    end

    assert_redirected_to color_suelos_path
  end
end
