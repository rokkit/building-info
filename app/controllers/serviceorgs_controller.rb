class ServiceorgsController < ApplicationController
  # GET /serviceorgs
  # GET /serviceorgs.json
  def index
    @serviceorgs = Serviceorg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @serviceorgs }
    end
  end

  # GET /serviceorgs/1
  # GET /serviceorgs/1.json
  def show
    @serviceorg = Serviceorg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @serviceorg }
    end
  end

  # GET /serviceorgs/new
  # GET /serviceorgs/new.json
  def new
    @serviceorg = Serviceorg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @serviceorg }
    end
  end

  # GET /serviceorgs/1/edit
  def edit
    @serviceorg = Serviceorg.find(params[:id])
  end

  # POST /serviceorgs
  # POST /serviceorgs.json
  def create
    @serviceorg = Serviceorg.new(params[:serviceorg])

    respond_to do |format|
      if @serviceorg.save
        format.html { redirect_to @serviceorg, notice: 'Serviceorg was successfully created.' }
        format.json { render json: @serviceorg, status: :created, location: @serviceorg }
      else
        format.html { render action: "new" }
        format.json { render json: @serviceorg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /serviceorgs/1
  # PUT /serviceorgs/1.json
  def update
    @serviceorg = Serviceorg.find(params[:id])

    respond_to do |format|
      if @serviceorg.update_attributes(params[:serviceorg])
        format.html { redirect_to @serviceorg, notice: 'Serviceorg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @serviceorg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serviceorgs/1
  # DELETE /serviceorgs/1.json
  def destroy
    @serviceorg = Serviceorg.find(params[:id])
    @serviceorg.destroy

    respond_to do |format|
      format.html { redirect_to serviceorgs_url }
      format.json { head :no_content }
    end
  end
end
