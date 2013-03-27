require 'test_helper'

class IdhsControllerTest < ActionController::TestCase
  setup do
    @idh = idhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idh" do
    assert_difference('Idh.count') do
      post :create, idh: { name: @idh.name }
    end

    assert_redirected_to idh_path(assigns(:idh))
  end

  test "should show idh" do
    get :show, id: @idh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idh
    assert_response :success
  end

  test "should update idh" do
    put :update, id: @idh, idh: { name: @idh.name }
    assert_redirected_to idh_path(assigns(:idh))
  end

  test "should destroy idh" do
    assert_difference('Idh.count', -1) do
      delete :destroy, id: @idh
    end

    assert_redirected_to idhs_path
  end
end
