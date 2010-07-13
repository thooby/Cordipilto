require 'test_helper'

class FincasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fincas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create finca" do
    assert_difference('Finca.count') do
      post :create, :finca => { }
    end

    assert_redirected_to finca_path(assigns(:finca))
  end

  test "should show finca" do
    get :show, :id => fincas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => fincas(:one).to_param
    assert_response :success
  end

  test "should update finca" do
    put :update, :id => fincas(:one).to_param, :finca => { }
    assert_redirected_to finca_path(assigns(:finca))
  end

  test "should destroy finca" do
    assert_difference('Finca.count', -1) do
      delete :destroy, :id => fincas(:one).to_param
    end

    assert_redirected_to fincas_path
  end
end
