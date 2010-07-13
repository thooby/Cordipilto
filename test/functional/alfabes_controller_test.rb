require 'test_helper'

class AlfabesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alfabes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alfabe" do
    assert_difference('Alfabe.count') do
      post :create, :alfabe => { }
    end

    assert_redirected_to alfabe_path(assigns(:alfabe))
  end

  test "should show alfabe" do
    get :show, :id => alfabes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => alfabes(:one).to_param
    assert_response :success
  end

  test "should update alfabe" do
    put :update, :id => alfabes(:one).to_param, :alfabe => { }
    assert_redirected_to alfabe_path(assigns(:alfabe))
  end

  test "should destroy alfabe" do
    assert_difference('Alfabe.count', -1) do
      delete :destroy, :id => alfabes(:one).to_param
    end

    assert_redirected_to alfabes_path
  end
end
