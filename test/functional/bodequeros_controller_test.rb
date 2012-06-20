require 'test_helper'

class BodequerosControllerTest < ActionController::TestCase
  setup do
    @bodequero = bodequeros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bodequeros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bodequero" do
    assert_difference('Bodequero.count') do
      post :create, :bodequero => @bodequero.attributes
    end

    assert_redirected_to bodequero_path(assigns(:bodequero))
  end

  test "should show bodequero" do
    get :show, :id => @bodequero.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bodequero.to_param
    assert_response :success
  end

  test "should update bodequero" do
    put :update, :id => @bodequero.to_param, :bodequero => @bodequero.attributes
    assert_redirected_to bodequero_path(assigns(:bodequero))
  end

  test "should destroy bodequero" do
    assert_difference('Bodequero.count', -1) do
      delete :destroy, :id => @bodequero.to_param
    end

    assert_redirected_to bodequeros_path
  end
end
