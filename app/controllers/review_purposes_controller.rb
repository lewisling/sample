class ReviewPurposesController < ApplicationController
  # GET /review_purposes
  # GET /review_purposes.json
  def index
    @review_purposes = ReviewPurpose.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @review_purposes }
    end
  end

  # GET /review_purposes/1
  # GET /review_purposes/1.json
  def show
    @review_purpose = ReviewPurpose.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @review_purpose }
    end
  end

  # GET /review_purposes/new
  # GET /review_purposes/new.json
  def new
    @review_purpose = ReviewPurpose.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @review_purpose }
    end
  end

  # GET /review_purposes/1/edit
  def edit
    @review_purpose = ReviewPurpose.find(params[:id])
  end

  # POST /review_purposes
  # POST /review_purposes.json
  def create
    @review_purpose = ReviewPurpose.new(params[:review_purpose])

    respond_to do |format|
      if @review_purpose.save
        format.html { redirect_to @review_purpose, :notice => 'Review purpose was successfully created.' }
        format.json { render :json => @review_purpose, :status => :created, :location => @review_purpose }
      else
        format.html { render :action => "new" }
        format.json { render :json => @review_purpose.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /review_purposes/1
  # PUT /review_purposes/1.json
  def update
    @review_purpose = ReviewPurpose.find(params[:id])

    respond_to do |format|
      if @review_purpose.update_attributes(params[:review_purpose])
        format.html { redirect_to @review_purpose, :notice => 'Review purpose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @review_purpose.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /review_purposes/1
  # DELETE /review_purposes/1.json
  def destroy
    @review_purpose = ReviewPurpose.find(params[:id])
    @review_purpose.destroy

    respond_to do |format|
      format.html { redirect_to review_purposes_url }
      format.json { head :no_content }
    end
  end
end
