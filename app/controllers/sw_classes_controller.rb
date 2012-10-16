class SwClassesController < ApplicationController
  # GET /sw_classes
  # GET /sw_classes.json
  def index
    @sw_classes = SwClass.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sw_classes }
    end
  end

  # GET /sw_classes/1
  # GET /sw_classes/1.json
  def show
    @sw_class = SwClass.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sw_class }
    end
  end

  # GET /sw_classes/new
  # GET /sw_classes/new.json
  def new
    @sw_class = SwClass.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sw_class }
    end
  end

  # GET /sw_classes/1/edit
  def edit
    @sw_class = SwClass.find(params[:id])
  end

  # POST /sw_classes
  # POST /sw_classes.json
  def create
    @sw_class = SwClass.new(params[:sw_class])

    respond_to do |format|
      if @sw_class.save
        format.html { redirect_to @sw_class, :notice => 'Sw class was successfully created.' }
        format.json { render :json => @sw_class, :status => :created, :location => @sw_class }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sw_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sw_classes/1
  # PUT /sw_classes/1.json
  def update
    @sw_class = SwClass.find(params[:id])

    respond_to do |format|
      if @sw_class.update_attributes(params[:sw_class])
        format.html { redirect_to @sw_class, :notice => 'Sw class was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sw_class.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sw_classes/1
  # DELETE /sw_classes/1.json
  def destroy
    @sw_class = SwClass.find(params[:id])
    @sw_class.destroy

    respond_to do |format|
      format.html { redirect_to sw_classes_url }
      format.json { head :no_content }
    end
  end
end
