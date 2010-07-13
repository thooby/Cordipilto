require 'test_helper'

class AccesosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accesos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acceso" do
    assert_difference('Acceso.count') do
      post :create, :acceso => { }
    end

    assert_redirected_to acceso_path(assigns(:acceso))
  end

  test "should show acceso" do
    get :show, :id => accesos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => accesos(:one).to_param
    assert_response :success
  end

  test "should update acceso" do
    put :update, :id => accesos(:one).to_param, :acceso => { }
    assert_redirected_to acceso_path(assigns(:acceso))
  end

  test "should destroy acceso" do
    assert_difference('Acceso.count', -1) do
      delete :destroy, :id => accesos(:one).to_param
    end

    assert_redirected_to accesos_path
  end
end
