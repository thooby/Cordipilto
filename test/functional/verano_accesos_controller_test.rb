require 'test_helper'

class VeranoAccesosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:verano_accesos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create verano_acceso" do
    assert_difference('VeranoAcceso.count') do
      post :create, :verano_acceso => { }
    end

    assert_redirected_to verano_acceso_path(assigns(:verano_acceso))
  end

  test "should show verano_acceso" do
    get :show, :id => verano_accesos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => verano_accesos(:one).to_param
    assert_response :success
  end

  test "should update verano_acceso" do
    put :update, :id => verano_accesos(:one).to_param, :verano_acceso => { }
    assert_redirected_to verano_acceso_path(assigns(:verano_acceso))
  end

  test "should destroy verano_acceso" do
    assert_difference('VeranoAcceso.count', -1) do
      delete :destroy, :id => verano_accesos(:one).to_param
    end

    assert_redirected_to verano_accesos_path
  end
end
