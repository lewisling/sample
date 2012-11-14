class SwcsController < ApplicationController
  # GET /swcs
  # GET /swcs.json
  def index
    @swcs = Swc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @swcs }
    end
  end

  # GET /swcs/1
  # GET /swcs/1.json
  def show
    @swc = Swc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @swc }
    end
  end

  # GET /swcs/new
  # GET /swcs/new.json
  def new
    @swc = Swc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @swc }
    end
  end

  # GET /swcs/1/edit
  def edit
    @swc = Swc.find(params[:id])
  end

  # POST /swcs
  # POST /swcs.json
  def create
    @swc = Swc.new(params[:swc])

    respond_to do |format|
      if @swc.save
        format.html { redirect_to @swc, notice: 'Swc was successfully created.' }
        format.json { render json: @swc, status: :created, location: @swc }
      else
        format.html { render action: "new" }
        format.json { render json: @swc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /swcs/1
  # PUT /swcs/1.json
  def update
    @swc = Swc.find(params[:id])

    respond_to do |format|
      if @swc.update_attributes(params[:swc])
        format.html { redirect_to @swc, notice: 'Swc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @swc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /swcs/1
  # DELETE /swcs/1.json
  def destroy
    @swc = Swc.find(params[:id])
    @swc.destroy

    respond_to do |format|
      format.html { redirect_to swcs_url }
      format.json { head :no_content }
    end
  end
end
