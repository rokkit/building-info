class TypeOfHousesController < ApplicationController
  # GET /type_of_houses
  # GET /type_of_houses.json
  def index
    @type_of_houses = TypeOfHouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @type_of_houses }
    end
  end

  # GET /type_of_houses/1
  # GET /type_of_houses/1.json
  def show
    @type_of_house = TypeOfHouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @type_of_house }
    end
  end

  # GET /type_of_houses/new
  # GET /type_of_houses/new.json
  def new
    @type_of_house = TypeOfHouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @type_of_house }
    end
  end

  # GET /type_of_houses/1/edit
  def edit
    @type_of_house = TypeOfHouse.find(params[:id])
  end

  # POST /type_of_houses
  # POST /type_of_houses.json
  def create
    @type_of_house = TypeOfHouse.new(params[:type_of_house])

    respond_to do |format|
      if @type_of_house.save
        format.html { redirect_to @type_of_house, notice: 'Type of house was successfully created.' }
        format.json { render json: @type_of_house, status: :created, location: @type_of_house }
      else
        format.html { render action: "new" }
        format.json { render json: @type_of_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /type_of_houses/1
  # PUT /type_of_houses/1.json
  def update
    @type_of_house = TypeOfHouse.find(params[:id])

    respond_to do |format|
      if @type_of_house.update_attributes(params[:type_of_house])
        format.html { redirect_to @type_of_house, notice: 'Type of house was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @type_of_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_of_houses/1
  # DELETE /type_of_houses/1.json
  def destroy
    @type_of_house = TypeOfHouse.find(params[:id])
    @type_of_house.destroy

    respond_to do |format|
      format.html { redirect_to type_of_houses_url }
      format.json { head :no_content }
    end
  end
end
