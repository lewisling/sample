require 'test_helper'

class ReviewResultsControllerTest < ActionController::TestCase
  setup do
    @review_result = review_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_result" do
    assert_difference('ReviewResult.count') do
      post :create, :review_result => { :conclusion => @review_result.conclusion }
    end

    assert_redirected_to review_result_path(assigns(:review_result))
  end

  test "should show review_result" do
    get :show, :id => @review_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @review_result
    assert_response :success
  end

  test "should update review_result" do
    put :update, :id => @review_result, :review_result => { :conclusion => @review_result.conclusion }
    assert_redirected_to review_result_path(assigns(:review_result))
  end

  test "should destroy review_result" do
    assert_difference('ReviewResult.count', -1) do
      delete :destroy, :id => @review_result
    end

    assert_redirected_to review_results_path
  end
end
