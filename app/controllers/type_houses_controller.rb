class TypeHousesController < ApplicationController
  # GET /type_houses
  # GET /type_houses.json
  def index
    @type_houses = TypeHouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_houses }
    end
  end

  # GET /type_houses/1
  # GET /type_houses/1.json
  def show
    @type_house = TypeHouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_house }
    end
  end

  # GET /type_houses/new
  # GET /type_houses/new.json
  def new
    @type_house = TypeHouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_house }
    end
  end

  # GET /type_houses/1/edit
  def edit
    @type_house = TypeHouse.find(params[:id])
  end

  # POST /type_houses
  # POST /type_houses.json
  def create
    @type_house = TypeHouse.new(params[:type_house])

    respond_to do |format|
      if @type_house.save
        format.html { redirect_to @type_house, notice: 'Type house was successfully created.' }
        format.json { render json: @type_house, status: :created, location: @type_house }
      else
        format.html { render action: "new" }
        format.json { render json: @type_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_houses/1
  # PUT /type_houses/1.json
  def update
    @type_house = TypeHouse.find(params[:id])

    respond_to do |format|
      if @type_house.update_attributes(params[:type_house])
        format.html { redirect_to @type_house, notice: 'Type house was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_houses/1
  # DELETE /type_houses/1.json
  def destroy
    @type_house = TypeHouse.find(params[:id])
    @type_house.destroy

    respond_to do |format|
      format.html { redirect_to type_houses_url }
      format.json { head :no_content }
    end
  end
end
