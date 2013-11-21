class RelatedsController < ApplicationController
  # GET /relateds
  # GET /relateds.json
  def index
    @relateds = Related.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relateds }
    end
  end

  # GET /relateds/1
  # GET /relateds/1.json
  def show
    @related = Related.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @related }
    end
  end

  # GET /relateds/new
  # GET /relateds/new.json
  def new
    @related = Related.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @related }
    end
  end

  # GET /relateds/1/edit
  def edit
    @related = Related.find(params[:id])
  end

  # POST /relateds
  # POST /relateds.json
  def create
    @related = Related.new(params[:related])

    respond_to do |format|
      if @related.save
        format.html { redirect_to @related, notice: 'Related was successfully created.' }
        format.json { render json: @related, status: :created, location: @related }
      else
        format.html { render action: "new" }
        format.json { render json: @related.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /relateds/1
  # PUT /relateds/1.json
  def update
    @related = Related.find(params[:id])

    respond_to do |format|
      if @related.update_attributes(params[:related])
        format.html { redirect_to @related, notice: 'Related was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @related.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relateds/1
  # DELETE /relateds/1.json
  def destroy
    @related = Related.find(params[:id])
    @related.destroy

    respond_to do |format|
      format.html { redirect_to relateds_url }
      format.json { head :no_content }
    end
  end
end
