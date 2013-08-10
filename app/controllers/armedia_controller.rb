class ArmediaController < ApplicationController
  # GET /armedia
  # GET /armedia.json
  def index
    @armedia = Armedium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @armedia }
    end
  end

  # GET /armedia/1
  # GET /armedia/1.json
  def show
    @armedium = Armedium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @armedium }
    end
  end

  # GET /armedia/new
  # GET /armedia/new.json
  def new
    @armedium = Armedium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @armedium }
    end
  end

  # GET /armedia/1/edit
  def edit
    @armedium = Armedium.find(params[:id])
  end

  # POST /armedia
  # POST /armedia.json
  def create
    @armedium = Armedium.new(params[:armedium])

    respond_to do |format|
      if @armedium.save
        format.html { redirect_to @armedium, notice: 'Armedium was successfully created.' }
        format.json { render json: @armedium, status: :created, location: @armedium }
      else
        format.html { render action: "new" }
        format.json { render json: @armedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /armedia/1
  # PUT /armedia/1.json
  def update
    @armedium = Armedium.find(params[:id])

    respond_to do |format|
      if @armedium.update_attributes(params[:armedium])
        format.html { redirect_to @armedium, notice: 'Armedium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @armedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /armedia/1
  # DELETE /armedia/1.json
  def destroy
    @armedium = Armedium.find(params[:id])
    @armedium.destroy

    respond_to do |format|
      format.html { redirect_to armedia_url }
      format.json { head :no_content }
    end
  end
end
