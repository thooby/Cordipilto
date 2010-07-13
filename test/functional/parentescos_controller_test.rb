require 'test_helper'

class ParentescosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parentescos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parentesco" do
    assert_difference('Parentesco.count') do
      post :create, :parentesco => { }
    end

    assert_redirected_to parentesco_path(assigns(:parentesco))
  end

  test "should show parentesco" do
    get :show, :id => parentescos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => parentescos(:one).to_param
    assert_response :success
  end

  test "should update parentesco" do
    put :update, :id => parentescos(:one).to_param, :parentesco => { }
    assert_redirected_to parentesco_path(assigns(:parentesco))
  end

  test "should destroy parentesco" do
    assert_difference('Parentesco.count', -1) do
      delete :destroy, :id => parentescos(:one).to_param
    end

    assert_redirected_to parentescos_path
  end
end
