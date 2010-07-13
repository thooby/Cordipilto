require 'test_helper'

class TipoSuelosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_suelos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_suelo" do
    assert_difference('TipoSuelo.count') do
      post :create, :tipo_suelo => { }
    end

    assert_redirected_to tipo_suelo_path(assigns(:tipo_suelo))
  end

  test "should show tipo_suelo" do
    get :show, :id => tipo_suelos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tipo_suelos(:one).to_param
    assert_response :success
  end

  test "should update tipo_suelo" do
    put :update, :id => tipo_suelos(:one).to_param, :tipo_suelo => { }
    assert_redirected_to tipo_suelo_path(assigns(:tipo_suelo))
  end

  test "should destroy tipo_suelo" do
    assert_difference('TipoSuelo.count', -1) do
      delete :destroy, :id => tipo_suelos(:one).to_param
    end

    assert_redirected_to tipo_suelos_path
  end
end
