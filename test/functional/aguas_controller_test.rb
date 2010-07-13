require 'test_helper'

class AguasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aguas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agua" do
    assert_difference('Agua.count') do
      post :create, :agua => { }
    end

    assert_redirected_to agua_path(assigns(:agua))
  end

  test "should show agua" do
    get :show, :id => aguas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => aguas(:one).to_param
    assert_response :success
  end

  test "should update agua" do
    put :update, :id => aguas(:one).to_param, :agua => { }
    assert_redirected_to agua_path(assigns(:agua))
  end

  test "should destroy agua" do
    assert_difference('Agua.count', -1) do
      delete :destroy, :id => aguas(:one).to_param
    end

    assert_redirected_to aguas_path
  end
end
