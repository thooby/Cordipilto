require 'test_helper'

class OpenmapasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:openmapas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create openmapa" do
    assert_difference('Openmapa.count') do
      post :create, :openmapa => { }
    end

    assert_redirected_to openmapa_path(assigns(:openmapa))
  end

  test "should show openmapa" do
    get :show, :id => openmapas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => openmapas(:one).to_param
    assert_response :success
  end

  test "should update openmapa" do
    put :update, :id => openmapas(:one).to_param, :openmapa => { }
    assert_redirected_to openmapa_path(assigns(:openmapa))
  end

  test "should destroy openmapa" do
    assert_difference('Openmapa.count', -1) do
      delete :destroy, :id => openmapas(:one).to_param
    end

    assert_redirected_to openmapas_path
  end
end
