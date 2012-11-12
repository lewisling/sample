class ProductsController < ApplicationController
  has_scope :is_active, :type => :boolean
  has_scope :not_active, :type => :boolean
  has_scope :is_handover, :type => :boolean
  has_scope :not_handover, :type => :boolean
  has_scope :new_created, :type => :boolean
  has_scope :old_created, :type => :boolean
  has_scope :new_updated, :type => :boolean
  has_scope :old_updated, :type => :boolean

  # GET /products
  # GET /products.json
  def index
    # @products = apply_scopes(Product).all

    if params[:by_cat]
      @products = Product.where(:cat => params[:by_cat])
    else
      @products = Product.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @products }
      format.csv { send_data @products.to_csv }
      format.xls { send_data @products.to_xls, :filename => 'products.xls' }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, :notice => 'Product was successfully created.' }
        format.json { render :json => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.json { render :json => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, :notice => 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
