require 'test_helper'

class AdquisControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adquis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adqui" do
    assert_difference('Adqui.count') do
      post :create, :adqui => { }
    end

    assert_redirected_to adqui_path(assigns(:adqui))
  end

  test "should show adqui" do
    get :show, :id => adquis(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => adquis(:one).to_param
    assert_response :success
  end

  test "should update adqui" do
    put :update, :id => adquis(:one).to_param, :adqui => { }
    assert_redirected_to adqui_path(assigns(:adqui))
  end

  test "should destroy adqui" do
    assert_difference('Adqui.count', -1) do
      delete :destroy, :id => adquis(:one).to_param
    end

    assert_redirected_to adquis_path
  end
end
