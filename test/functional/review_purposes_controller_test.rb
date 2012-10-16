require 'test_helper'

class ReviewPurposesControllerTest < ActionController::TestCase
  setup do
    @review_purpose = review_purposes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:review_purposes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create review_purpose" do
    assert_difference('ReviewPurpose.count') do
      post :create, :review_purpose => { : => @review_purpose., :purpose => @review_purpose.purpose }
    end

    assert_redirected_to review_purpose_path(assigns(:review_purpose))
  end

  test "should show review_purpose" do
    get :show, :id => @review_purpose
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @review_purpose
    assert_response :success
  end

  test "should update review_purpose" do
    put :update, :id => @review_purpose, :review_purpose => { : => @review_purpose., :purpose => @review_purpose.purpose }
    assert_redirected_to review_purpose_path(assigns(:review_purpose))
  end

  test "should destroy review_purpose" do
    assert_difference('ReviewPurpose.count', -1) do
      delete :destroy, :id => @review_purpose
    end

    assert_redirected_to review_purposes_path
  end
end
