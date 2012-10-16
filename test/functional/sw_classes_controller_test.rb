require 'test_helper'

class SwClassesControllerTest < ActionController::TestCase
  setup do
    @sw_class = sw_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sw_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sw_class" do
    assert_difference('SwClass.count') do
      post :create, :sw_class => { :level => @sw_class.level }
    end

    assert_redirected_to sw_class_path(assigns(:sw_class))
  end

  test "should show sw_class" do
    get :show, :id => @sw_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sw_class
    assert_response :success
  end

  test "should update sw_class" do
    put :update, :id => @sw_class, :sw_class => { :level => @sw_class.level }
    assert_redirected_to sw_class_path(assigns(:sw_class))
  end

  test "should destroy sw_class" do
    assert_difference('SwClass.count', -1) do
      delete :destroy, :id => @sw_class
    end

    assert_redirected_to sw_classes_path
  end
end
