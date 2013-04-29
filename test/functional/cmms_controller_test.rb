require 'test_helper'

class CmmsControllerTest < ActionController::TestCase
  setup do
    @cmm = cmms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cmms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cmm" do
    assert_difference('Cmm.count') do
      post :create, cmm: { name: @cmm.name }
    end

    assert_redirected_to cmm_path(assigns(:cmm))
  end

  test "should show cmm" do
    get :show, id: @cmm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cmm
    assert_response :success
  end

  test "should update cmm" do
    put :update, id: @cmm, cmm: { name: @cmm.name }
    assert_redirected_to cmm_path(assigns(:cmm))
  end

  test "should destroy cmm" do
    assert_difference('Cmm.count', -1) do
      delete :destroy, id: @cmm
    end

    assert_redirected_to cmms_path
  end
end
