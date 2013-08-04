class AttractionToursController < ApplicationController
  # GET /attraction_tours
  # GET /attraction_tours.json
  def index
    if params.has_key?(:tour_id)
      @attraction_tours = Tour.find(params[:tour_id]).attraction_tours
    else
      @attraction_tours = AttractionTour.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @attraction_tours.to_json(:include => [:media, :attraction, :arcones, :messages]) }
    end
  end

  # GET /attraction_tours/1
  # GET /attraction_tours/1.json
  def show
    @attraction_tour = AttractionTour.find(params[:id])
    @multimedia = @attraction_tour.get_attraction_image( @attraction_tour )
    @messages = @attraction_tour.messages

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @attraction_tour }
    end
  end

  # GET /attraction_tours/new
  # GET /attraction_tours/new.json
  def new
    @tour = Tour.find(params[:tour_id])
    @attraction_tour = AttractionTour.create(:tour_id => params[:tour_id], :attraction_id => params[:attraction_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @attraction_tour }
    end
  end

  # GET /attraction_tours/1/edit
  def edit
    @attraction_tour = AttractionTour.find(params[:id])
  end

  # POST /attraction_tours
  # POST /attraction_tours.json
  def create
    @tour = Tour.find(params[:tour_id])
    @attraction_tour = AttractionTour.new(params[:attraction_tour])

    respond_to do |format|
      if @attraction_tour.save
        format.html { redirect_to @tour, notice: 'Attraction tour was successfully created.' }
        # format.json { render json: @attraction_tour, status: :created, location: @attraction_tour }
      else
        # format.html { render action: "new" }
        # format.json { render json: @attraction_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /attraction_tours/1
  # PUT /attraction_tours/1.json
  def update
    @attraction_tour = AttractionTour.find(params[:id])

    respond_to do |format|
      if @attraction_tour.update_attributes(params[:attraction_tour])
        format.html { redirect_to @attraction_tour, notice: 'Attraction tour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @attraction_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attraction_tours/1
  # DELETE /attraction_tours/1.json
  def destroy
    @attraction_tour = AttractionTour.find(params[:id])
    @tour = @attraction_tour.tour
    @attraction_tour.destroy

    respond_to do |format|
      format.html { redirect_to @tour }
      format.json { head :no_content }
    end
  end
end
