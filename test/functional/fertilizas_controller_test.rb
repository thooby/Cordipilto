require 'test_helper'

class FertilizasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fertilizas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fertiliza" do
    assert_difference('Fertiliza.count') do
      post :create, :fertiliza => { }
    end

    assert_redirected_to fertiliza_path(assigns(:fertiliza))
  end

  test "should show fertiliza" do
    get :show, :id => fertilizas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fertilizas(:one).to_param
    assert_response :success
  end

  test "should update fertiliza" do
    put :update, :id => fertilizas(:one).to_param, :fertiliza => { }
    assert_redirected_to fertiliza_path(assigns(:fertiliza))
  end

  test "should destroy fertiliza" do
    assert_difference('Fertiliza.count', -1) do
      delete :destroy, :id => fertilizas(:one).to_param
    end

    assert_redirected_to fertilizas_path
  end
end
