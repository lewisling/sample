require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, :product => { :aa_actual => @product.aa_actual, :aa_plan => @product.aa_plan, :active => @product.active, :category_id => @product.category_id, :comment => @product.comment, :cr_actual => @product.cr_actual, :cr_plan => @product.cr_plan, :description => @product.description, :folder_ready => @product.folder_ready, :handover => @product.handover, :model => @product.model, :pd_actual => @product.pd_actual, :pd_plan => @product.pd_plan, :platform_id => @product.platform_id, :ppc_actual => @product.ppc_actual, :ppc_plan => @product.ppc_plan, :pv_actual => @product.pv_actual, :pv_plan => @product.pv_plan, :spl_id => @product.spl_id, :supplier_id => @product.supplier_id, :swa_id => @product.swa_id, :swclass_id => @product.swclass_id, :volume_forecast => @product.volume_forecast, :vpd_actual => @product.vpd_actual, :vpd_plan => @product.vpd_plan }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, :id => @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product
    assert_response :success
  end

  test "should update product" do
    put :update, :id => @product, :product => { :aa_actual => @product.aa_actual, :aa_plan => @product.aa_plan, :active => @product.active, :category_id => @product.category_id, :comment => @product.comment, :cr_actual => @product.cr_actual, :cr_plan => @product.cr_plan, :description => @product.description, :folder_ready => @product.folder_ready, :handover => @product.handover, :model => @product.model, :pd_actual => @product.pd_actual, :pd_plan => @product.pd_plan, :platform_id => @product.platform_id, :ppc_actual => @product.ppc_actual, :ppc_plan => @product.ppc_plan, :pv_actual => @product.pv_actual, :pv_plan => @product.pv_plan, :spl_id => @product.spl_id, :supplier_id => @product.supplier_id, :swa_id => @product.swa_id, :swclass_id => @product.swclass_id, :volume_forecast => @product.volume_forecast, :vpd_actual => @product.vpd_actual, :vpd_plan => @product.vpd_plan }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, :id => @product
    end

    assert_redirected_to products_path
  end
end
