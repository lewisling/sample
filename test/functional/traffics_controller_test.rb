require 'test_helper'

class TrafficsControllerTest < ActionController::TestCase
  setup do
    @traffic = traffics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traffics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traffic" do
    assert_difference('Traffic.count') do
      post :create, traffic: { name: @traffic.name }
    end

    assert_redirected_to traffic_path(assigns(:traffic))
  end

  test "should show traffic" do
    get :show, id: @traffic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traffic
    assert_response :success
  end

  test "should update traffic" do
    put :update, id: @traffic, traffic: { name: @traffic.name }
    assert_redirected_to traffic_path(assigns(:traffic))
  end

  test "should destroy traffic" do
    assert_difference('Traffic.count', -1) do
      delete :destroy, id: @traffic
    end

    assert_redirected_to traffics_path
  end
end
