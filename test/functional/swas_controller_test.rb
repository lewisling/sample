require 'test_helper'

class SwasControllerTest < ActionController::TestCase
  setup do
    @swa = swas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swa" do
    assert_difference('Swa.count') do
      post :create, :swa => { :email => @swa.email, :name => @swa.name }
    end

    assert_redirected_to swa_path(assigns(:swa))
  end

  test "should show swa" do
    get :show, :id => @swa
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @swa
    assert_response :success
  end

  test "should update swa" do
    put :update, :id => @swa, :swa => { :email => @swa.email, :name => @swa.name }
    assert_redirected_to swa_path(assigns(:swa))
  end

  test "should destroy swa" do
    assert_difference('Swa.count', -1) do
      delete :destroy, :id => @swa
    end

    assert_redirected_to swas_path
  end
end
