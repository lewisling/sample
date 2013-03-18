class TrafficsController < ApplicationController
  # GET /traffics
  # GET /traffics.json
  def index
    @traffics = Traffic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @traffics }
    end
  end

  # GET /traffics/1
  # GET /traffics/1.json
  def show
    @traffic = Traffic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @traffic }
    end
  end

  # GET /traffics/new
  # GET /traffics/new.json
  def new
    @traffic = Traffic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @traffic }
    end
  end

  # GET /traffics/1/edit
  def edit
    @traffic = Traffic.find(params[:id])
  end

  # POST /traffics
  # POST /traffics.json
  def create
    @traffic = Traffic.new(params[:traffic])

    respond_to do |format|
      if @traffic.save
        format.html { redirect_to @traffic, notice: 'Traffic was successfully created.' }
        format.json { render json: @traffic, status: :created, location: @traffic }
      else
        format.html { render action: "new" }
        format.json { render json: @traffic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /traffics/1
  # PUT /traffics/1.json
  def update
    @traffic = Traffic.find(params[:id])

    respond_to do |format|
      if @traffic.update_attributes(params[:traffic])
        format.html { redirect_to @traffic, notice: 'Traffic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @traffic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traffics/1
  # DELETE /traffics/1.json
  def destroy
    @traffic = Traffic.find(params[:id])
    @traffic.destroy

    respond_to do |format|
      format.html { redirect_to traffics_url }
      format.json { head :no_content }
    end
  end
end
