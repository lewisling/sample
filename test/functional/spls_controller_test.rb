require 'test_helper'

class SplsControllerTest < ActionController::TestCase
  setup do
    @spl = spls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spl" do
    assert_difference('Spl.count') do
      post :create, :spl => { :email => @spl.email, :name => @spl.name }
    end

    assert_redirected_to spl_path(assigns(:spl))
  end

  test "should show spl" do
    get :show, :id => @spl
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @spl
    assert_response :success
  end

  test "should update spl" do
    put :update, :id => @spl, :spl => { :email => @spl.email, :name => @spl.name }
    assert_redirected_to spl_path(assigns(:spl))
  end

  test "should destroy spl" do
    assert_difference('Spl.count', -1) do
      delete :destroy, :id => @spl
    end

    assert_redirected_to spls_path
  end
end
