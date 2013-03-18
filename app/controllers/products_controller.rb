class ProductsController < ApplicationController

  # GET /products
  # GET /products.json
  def index
    if params[:by_cat]
      @products = Product.joins(:category).where(:active => true, "categories.name"=>params[:by_cat])
    elsif params[:inactive]
      @products = Product.where(:active => false)
    elsif params[:created_at]
      @products = Product.where(:active => true,
                          :created_at => (Time.now.midnight - params[:created_at].to_i.week)..Time.now.midnight)
    elsif params[:updated_at]
      @products = Product.where(:active => true,
                          :updated_at => (Time.now.midnight - params[:updated_at].to_i.week)..Time.now.midnight)
    else # all active products
      @products = Product.where(:active => true)
    end

    @cats = Category.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @products }
      format.xls # index.xls.erb
    end
  end

  # GET /fulltable
  def fulltable
    if params[:by_cat]
      @products = Product.joins(:category).where(:active => true, "categories.name"=>params[:by_cat])
    elsif params[:inactive]
      @products = Product.where(:active => false)
    elsif params[:created_at]
      @products = Product.where(:active => true,
                          :created_at => (Time.now.midnight - params[:created_at].to_i.week)..Time.now.midnight)
    elsif params[:updated_at]
      @products = Product.where(:active => true,
                          :updated_at => (Time.now.midnight - params[:updated_at].to_i.week)..Time.now.midnight)
    else # all active products
      @products = Product.where(:active => true)
    end

    respond_to do |format|
      format.html # fulltable.html.erb
      format.json { render :json => @products }
      format.xls # fulltable.xls.erb
    end
  end

  # GET /summary
  def summary
    @swas = Swa.all
    @cats = Category.all
    @spls = Spl.all

    respond_to do |format|
      format.html # summary.html.erb
      format.xls # summary.xls.erb
    end
  end

  # GET /milestone
  def milestone
    @products = Product.where(:active => true)
    if params[:week]
      @week = params[:week]
    else
      @week = "13" + "%02d" % Date.today.cweek
    end

    respond_to do |format|
      format.html # milestone.html.erb
      format.xls # milestone.xls.erb
    end    
  end

  # GET /predev
  def predev
    # @products = Product.where(:active => true, :vpd_actual => nil, "pd_plan IS NOT NULL")
    @products = Product.where("active = 't' AND pd_plan IS NOT NULL AND vpd_actual IS NULL")

    respond_to do |format|
      format.html # predev.html.erb
      # format.xls # predev.xls.erb
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
