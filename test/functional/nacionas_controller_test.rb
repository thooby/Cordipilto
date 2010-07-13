require 'test_helper'

class NacionasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nacionas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create naciona" do
    assert_difference('Naciona.count') do
      post :create, :naciona => { }
    end

    assert_redirected_to naciona_path(assigns(:naciona))
  end

  test "should show naciona" do
    get :show, :id => nacionas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => nacionas(:one).to_param
    assert_response :success
  end

  test "should update naciona" do
    put :update, :id => nacionas(:one).to_param, :naciona => { }
    assert_redirected_to naciona_path(assigns(:naciona))
  end

  test "should destroy naciona" do
    assert_difference('Naciona.count', -1) do
      delete :destroy, :id => nacionas(:one).to_param
    end

    assert_redirected_to nacionas_path
  end
end
