class AttractionsController < ApplicationController
  # GET /attractions
  # GET /attractions.json
  def index
    if(params.has_key?(:venue_id))
      @venue = Venue.find(params[:venue_id])
      @attractions = @venue.attractions
    else
      @attractions = Attraction.all
    end
      
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attractions }
    end
  end

  # GET /attractions/1
  # GET /attractions/1.json
  def show
    @attraction = Attraction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attraction.to_json(:include => :media)}
    end
  end

  # GET /attractions/new
  # GET /attractions/new.json
  def new
    if(params.has_key?(:venue_id))
      @venue = Venue.find(params[:venue_id])
      @attractions = @venue.attractions
    else
      @attractions = Attraction.all
    end
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attraction }
    end
  end

  # GET /attractions/1/edit
  def edit
    @venue = Venue.find(params[:venue_id])
    @attraction = Attraction.find(params[:id])
  end

  # POST /attractions
  # POST /attractions.json
  def create
    @venue = Venue.find(params[:venue_id])
    @attraction = Attraction.new(params[:attraction])
    @attraction.venue = @venue
    
    respond_to do |format|
      if @attraction.save
        format.html { redirect_to venue_attractions_path(@venue), notice: 'Attraction was successfully created.' }
        format.json { render json: @attraction, status: :created, location: @attraction }
      else
        format.html { render action: "new" }
        format.json { render json: @attraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attractions/1
  # PUT /attractions/1.json
  def update
    @venue = Venue.find(params[:venue_id])
    @attraction = Attraction.find(params[:id])

    respond_to do |format|
      if @attraction.update_attributes(params[:attraction])
        format.html { redirect_to venue_attraction_path(@venue,@attraction), notice: 'Attraction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attraction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attractions/1
  # DELETE /attractions/1.json
  def destroy
    @attraction = Attraction.find(params[:id])
    @attraction.destroy

    respond_to do |format|
      format.html { redirect_to attractions_url }
      format.json { head :no_content }
    end
  end
end
