class SplsController < ApplicationController
  # GET /spls
  # GET /spls.json
  def index
    @spls = Spl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @spls }
    end
  end

  # GET /spls/1
  # GET /spls/1.json
  def show
    @spl = Spl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @spl }
    end
  end

  # GET /spls/new
  # GET /spls/new.json
  def new
    @spl = Spl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @spl }
    end
  end

  # GET /spls/1/edit
  def edit
    @spl = Spl.find(params[:id])
  end

  # POST /spls
  # POST /spls.json
  def create
    @spl = Spl.new(params[:spl])

    respond_to do |format|
      if @spl.save
        format.html { redirect_to @spl, :notice => 'Spl was successfully created.' }
        format.json { render :json => @spl, :status => :created, :location => @spl }
      else
        format.html { render :action => "new" }
        format.json { render :json => @spl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spls/1
  # PUT /spls/1.json
  def update
    @spl = Spl.find(params[:id])

    respond_to do |format|
      if @spl.update_attributes(params[:spl])
        format.html { redirect_to @spl, :notice => 'Spl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @spl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spls/1
  # DELETE /spls/1.json
  def destroy
    @spl = Spl.find(params[:id])
    @spl.destroy

    respond_to do |format|
      format.html { redirect_to spls_url }
      format.json { head :no_content }
    end
  end
end
