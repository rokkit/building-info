class ExthousesController < ApplicationController
  # GET /exthouses
  # GET /exthouses.json
  def index
    @exthouses = Exthouse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exthouses }
    end
  end

  # GET /exthouses/1
  # GET /exthouses/1.json
  def show
    @exthouse = Exthouse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exthouse }
    end
  end

  # GET /exthouses/new
  # GET /exthouses/new.json
  def new
    @exthouse = Exthouse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exthouse }
    end
  end

  # GET /exthouses/1/edit
  def edit
    @exthouse = Exthouse.find(params[:id])
  end

  # POST /exthouses
  # POST /exthouses.json
  def create
    @exthouse = Exthouse.new(params[:exthouse])

    respond_to do |format|
      if @exthouse.save
        format.html { redirect_to @exthouse, notice: 'Exthouse was successfully created.' }
        format.json { render json: @exthouse, status: :created, location: @exthouse }
      else
        format.html { render action: "new" }
        format.json { render json: @exthouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exthouses/1
  # PUT /exthouses/1.json
  def update
    @exthouse = Exthouse.find(params[:id])

    respond_to do |format|
      if @exthouse.update_attributes(params[:exthouse])
        format.html { redirect_to @exthouse, notice: 'Exthouse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exthouse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exthouses/1
  # DELETE /exthouses/1.json
  def destroy
    @exthouse = Exthouse.find(params[:id])
    @exthouse.destroy

    respond_to do |format|
      format.html { redirect_to exthouses_url }
      format.json { head :no_content }
    end
  end
end
