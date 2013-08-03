class ArconesController < ApplicationController
  # GET /arcones
  # GET /arcones.json
  def index
    @arcones = Arcone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @arcones }
    end
  end

  # GET /arcones/1
  # GET /arcones/1.json
  def show
    @arcone = Arcone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @arcone }
    end
  end

  # GET /arcones/new
  # GET /arcones/new.json
  def new
    @arcone = Arcone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @arcone }
    end
  end

  # GET /arcones/1/edit
  def edit
    @arcone = Arcone.find(params[:id])
  end

  # POST /arcones
  # POST /arcones.json
  def create
    @arcone = Arcone.new(params[:arcone])

    respond_to do |format|
      if @arcone.save
        format.html { redirect_to @arcone, notice: 'Arcone was successfully created.' }
        format.json { render json: @arcone, status: :created, location: @arcone }
      else
        format.html { render action: "new" }
        format.json { render json: @arcone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /arcones/1
  # PUT /arcones/1.json
  def update
    @arcone = Arcone.find(params[:id])

    respond_to do |format|
      if @arcone.update_attributes(params[:arcone])
        format.html { redirect_to @arcone, notice: 'Arcone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @arcone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arcones/1
  # DELETE /arcones/1.json
  def destroy
    @arcone = Arcone.find(params[:id])
    @arcone.destroy

    respond_to do |format|
      format.html { redirect_to arcones_url }
      format.json { head :no_content }
    end
  end
end
