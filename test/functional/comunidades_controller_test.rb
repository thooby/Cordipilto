require 'test_helper'

class ComunidadesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comunidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comunidade" do
    assert_difference('Comunidade.count') do
      post :create, :comunidade => { }
    end

    assert_redirected_to comunidade_path(assigns(:comunidade))
  end

  test "should show comunidade" do
    get :show, :id => comunidades(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => comunidades(:one).to_param
    assert_response :success
  end

  test "should update comunidade" do
    put :update, :id => comunidades(:one).to_param, :comunidade => { }
    assert_redirected_to comunidade_path(assigns(:comunidade))
  end

  test "should destroy comunidade" do
    assert_difference('Comunidade.count', -1) do
      delete :destroy, :id => comunidades(:one).to_param
    end

    assert_redirected_to comunidades_path
  end
end
