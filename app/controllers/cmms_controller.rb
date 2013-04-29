class CmmsController < ApplicationController
  # GET /cmms
  # GET /cmms.json
  def index
    @cmms = Cmm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cmms }
    end
  end

  # GET /cmms/1
  # GET /cmms/1.json
  def show
    @cmm = Cmm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cmm }
    end
  end

  # GET /cmms/new
  # GET /cmms/new.json
  def new
    @cmm = Cmm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cmm }
    end
  end

  # GET /cmms/1/edit
  def edit
    @cmm = Cmm.find(params[:id])
  end

  # POST /cmms
  # POST /cmms.json
  def create
    @cmm = Cmm.new(params[:cmm])

    respond_to do |format|
      if @cmm.save
        format.html { redirect_to @cmm, notice: 'Cmm was successfully created.' }
        format.json { render json: @cmm, status: :created, location: @cmm }
      else
        format.html { render action: "new" }
        format.json { render json: @cmm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cmms/1
  # PUT /cmms/1.json
  def update
    @cmm = Cmm.find(params[:id])

    respond_to do |format|
      if @cmm.update_attributes(params[:cmm])
        format.html { redirect_to @cmm, notice: 'Cmm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cmm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cmms/1
  # DELETE /cmms/1.json
  def destroy
    @cmm = Cmm.find(params[:id])
    @cmm.destroy

    respond_to do |format|
      format.html { redirect_to cmms_url }
      format.json { head :no_content }
    end
  end
end
