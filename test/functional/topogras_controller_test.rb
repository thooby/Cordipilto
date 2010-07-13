require 'test_helper'

class TopograsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topogras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topogra" do
    assert_difference('Topogra.count') do
      post :create, :topogra => { }
    end

    assert_redirected_to topogra_path(assigns(:topogra))
  end

  test "should show topogra" do
    get :show, :id => topogras(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => topogras(:one).to_param
    assert_response :success
  end

  test "should update topogra" do
    put :update, :id => topogras(:one).to_param, :topogra => { }
    assert_redirected_to topogra_path(assigns(:topogra))
  end

  test "should destroy topogra" do
    assert_difference('Topogra.count', -1) do
      delete :destroy, :id => topogras(:one).to_param
    end

    assert_redirected_to topogras_path
  end
end
