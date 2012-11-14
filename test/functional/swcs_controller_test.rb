require 'test_helper'

class SwcsControllerTest < ActionController::TestCase
  setup do
    @swc = swcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swc" do
    assert_difference('Swc.count') do
      post :create, swc: { name: @swc.name }
    end

    assert_redirected_to swc_path(assigns(:swc))
  end

  test "should show swc" do
    get :show, id: @swc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swc
    assert_response :success
  end

  test "should update swc" do
    put :update, id: @swc, swc: { name: @swc.name }
    assert_redirected_to swc_path(assigns(:swc))
  end

  test "should destroy swc" do
    assert_difference('Swc.count', -1) do
      delete :destroy, id: @swc
    end

    assert_redirected_to swcs_path
  end
end
