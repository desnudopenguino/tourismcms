class ToursController < ApplicationController
  # GET /tours
  # GET /tours.json
  def index
    if(params.has_key?(:venue_id))
      @tours = Venue.find(params[:venue_id]).tours
    else
      @tours = Tour.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tours.where('active = true') }
    end
  end

  # GET /tours/1
  # GET /tours/1.json
  def show
    @tour = Tour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @tour.to_json( :include => [:attraction_tours,:media]) }
    end
  end

  # GET /tours/new
  # GET /tours/new.json
  def new
    @venue = Venue.find(params[:venue_id])
    @tour = Tour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tour }
    end
  end

  # GET /tours/1/edit
  def edit
    @tour = Tour.find(params[:id])
  end

  # POST /tours
  # POST /tours.json
  def create
    @venue = Venue.find(params[:venue_id])
    @tour = Tour.new(params[:tour])
    @tour.venue = @venue

    respond_to do |format|
      if @tour.save
        format.html { redirect_to venue_path(@venue), notice: 'Tour was successfully created.' }
        format.json { render json: @tour, status: :created, location: @tour }
      else
        format.html { render action: "new" }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tours/1
  # PUT /tours/1.json
  def update
    @tour = Tour.find(params[:id])

    respond_to do |format|
      if @tour.update_attributes(params[:tour])
        format.html { redirect_to @tour, notice: 'Tour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tours/1
  # DELETE /tours/1.json
  def destroy
    @tour = Tour.find(params[:id])
    @venue = @tour.venue
    @tour.destroy

    respond_to do |format|
      format.html { redirect_to venue_path(@venue) }
      format.json { head :no_content }
    end
  end

  # GET /tours/1/attractions
  # GET /tours/1/attractions.json
  def attractions
    @tour = Tour.find(params[:tour_id])
    @attractions = @tour.attraction_tours

    respond_to do |format|
      format.html #attractions.html.erb
      format.json { render json: @attractions }
    end
  end
end
