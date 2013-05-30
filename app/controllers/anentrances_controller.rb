class AnentrancesController < ApplicationController
  # GET /anentrances
  # GET /anentrances.json
  def index
    @anentrances = Anentrance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @anentrances }
    end
  end

  # GET /anentrances/1
  # GET /anentrances/1.json
  def show
    @anentrance = Anentrance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @anentrance }
    end
  end

  # GET /anentrances/new
  # GET /anentrances/new.json
  def new
    @anentrance = Anentrance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @anentrance }
    end
  end

  # GET /anentrances/1/edit
  def edit
    @anentrance = Anentrance.find(params[:id])
  end

  # POST /anentrances
  # POST /anentrances.json
  def create
    @anentrance = Anentrance.new(params[:anentrance])

    respond_to do |format|
      if @anentrance.save
        format.html { redirect_to @anentrance, notice: 'Anentrance was successfully created.' }
        format.json { render json: @anentrance, status: :created, location: @anentrance }
      else
        format.html { render action: "new" }
        format.json { render json: @anentrance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /anentrances/1
  # PUT /anentrances/1.json
  def update
    @anentrance = Anentrance.find(params[:id])

    respond_to do |format|
      if @anentrance.update_attributes(params[:anentrance])
        format.html { redirect_to @anentrance, notice: 'Anentrance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @anentrance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anentrances/1
  # DELETE /anentrances/1.json
  def destroy
    @anentrance = Anentrance.find(params[:id])
    @anentrance.destroy

    respond_to do |format|
      format.html { redirect_to anentrances_url }
      format.json { head :no_content }
    end
  end
end
