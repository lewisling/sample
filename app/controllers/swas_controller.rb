class SwasController < ApplicationController
  # GET /swas
  # GET /swas.json
  def index
    @swas = Swa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @swas }
    end
  end

  # GET /swas/1
  # GET /swas/1.json
  def show
    @swa = Swa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @swa }
    end
  end

  # GET /swas/new
  # GET /swas/new.json
  def new
    @swa = Swa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @swa }
    end
  end

  # GET /swas/1/edit
  def edit
    @swa = Swa.find(params[:id])
  end

  # POST /swas
  # POST /swas.json
  def create
    @swa = Swa.new(params[:swa])

    respond_to do |format|
      if @swa.save
        format.html { redirect_to @swa, :notice => 'Swa was successfully created.' }
        format.json { render :json => @swa, :status => :created, :location => @swa }
      else
        format.html { render :action => "new" }
        format.json { render :json => @swa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /swas/1
  # PUT /swas/1.json
  def update
    @swa = Swa.find(params[:id])

    respond_to do |format|
      if @swa.update_attributes(params[:swa])
        format.html { redirect_to @swa, :notice => 'Swa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @swa.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /swas/1
  # DELETE /swas/1.json
  def destroy
    @swa = Swa.find(params[:id])
    @swa.destroy

    respond_to do |format|
      format.html { redirect_to swas_url }
      format.json { head :no_content }
    end
  end
end
