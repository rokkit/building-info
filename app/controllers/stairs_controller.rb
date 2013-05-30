class StairsController < ApplicationController
  # GET /stairs
  # GET /stairs.json
  def index
    @stairs = Stair.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stairs }
    end
  end

  # GET /stairs/1
  # GET /stairs/1.json
  def show
    @stair = Stair.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stair }
    end
  end

  # GET /stairs/new
  # GET /stairs/new.json
  def new
    @stair = Stair.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stair }
    end
  end

  # GET /stairs/1/edit
  def edit
    @stair = Stair.find(params[:id])
  end

  # POST /stairs
  # POST /stairs.json
  def create
    @stair = Stair.new(params[:stair])

    respond_to do |format|
      if @stair.save
        format.html { redirect_to @stair, notice: 'Stair was successfully created.' }
        format.json { render json: @stair, status: :created, location: @stair }
      else
        format.html { render action: "new" }
        format.json { render json: @stair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stairs/1
  # PUT /stairs/1.json
  def update
    @stair = Stair.find(params[:id])

    respond_to do |format|
      if @stair.update_attributes(params[:stair])
        format.html { redirect_to @stair, notice: 'Stair was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stairs/1
  # DELETE /stairs/1.json
  def destroy
    @stair = Stair.find(params[:id])
    @stair.destroy

    respond_to do |format|
      format.html { redirect_to stairs_url }
      format.json { head :no_content }
    end
  end
end
