require 'test_helper'

class InvierAccesosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invier_accesos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invier_acceso" do
    assert_difference('InvierAcceso.count') do
      post :create, :invier_acceso => { }
    end

    assert_redirected_to invier_acceso_path(assigns(:invier_acceso))
  end

  test "should show invier_acceso" do
    get :show, :id => invier_accesos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => invier_accesos(:one).to_param
    assert_response :success
  end

  test "should update invier_acceso" do
    put :update, :id => invier_accesos(:one).to_param, :invier_acceso => { }
    assert_redirected_to invier_acceso_path(assigns(:invier_acceso))
  end

  test "should destroy invier_acceso" do
    assert_difference('InvierAcceso.count', -1) do
      delete :destroy, :id => invier_accesos(:one).to_param
    end

    assert_redirected_to invier_accesos_path
  end
end
