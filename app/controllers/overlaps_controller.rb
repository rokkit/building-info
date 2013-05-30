class OverlapsController < ApplicationController
  # GET /overlaps
  # GET /overlaps.json
  def index
    @overlaps = Overlap.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @overlaps }
    end
  end

  # GET /overlaps/1
  # GET /overlaps/1.json
  def show
    @overlap = Overlap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @overlap }
    end
  end

  # GET /overlaps/new
  # GET /overlaps/new.json
  def new
    @overlap = Overlap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @overlap }
    end
  end

  # GET /overlaps/1/edit
  def edit
    @overlap = Overlap.find(params[:id])
  end

  # POST /overlaps
  # POST /overlaps.json
  def create
    @overlap = Overlap.new(params[:overlap])

    respond_to do |format|
      if @overlap.save
        format.html { redirect_to @overlap, notice: 'Overlap was successfully created.' }
        format.json { render json: @overlap, status: :created, location: @overlap }
      else
        format.html { render action: "new" }
        format.json { render json: @overlap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /overlaps/1
  # PUT /overlaps/1.json
  def update
    @overlap = Overlap.find(params[:id])

    respond_to do |format|
      if @overlap.update_attributes(params[:overlap])
        format.html { redirect_to @overlap, notice: 'Overlap was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @overlap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /overlaps/1
  # DELETE /overlaps/1.json
  def destroy
    @overlap = Overlap.find(params[:id])
    @overlap.destroy

    respond_to do |format|
      format.html { redirect_to overlaps_url }
      format.json { head :no_content }
    end
  end
end
