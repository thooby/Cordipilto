require 'test_helper'

class ProfesionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profesions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profesion" do
    assert_difference('Profesion.count') do
      post :create, :profesion => { }
    end

    assert_redirected_to profesion_path(assigns(:profesion))
  end

  test "should show profesion" do
    get :show, :id => profesions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => profesions(:one).to_param
    assert_response :success
  end

  test "should update profesion" do
    put :update, :id => profesions(:one).to_param, :profesion => { }
    assert_redirected_to profesion_path(assigns(:profesion))
  end

  test "should destroy profesion" do
    assert_difference('Profesion.count', -1) do
      delete :destroy, :id => profesions(:one).to_param
    end

    assert_redirected_to profesions_path
  end
end
