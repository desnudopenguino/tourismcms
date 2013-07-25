class TourVisitorsController < ApplicationController
  # GET /tour_visitors
  # GET /tour_visitors.json
  def index
    if(params.has_key?(:venue_visitors_id))
      @tour_visitors = VenueVisitor.find(params[:venue_visitor_id]).tour_visitors
    else
      @tour_visitors = TourVisitor.all
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tour_visitors }
    end
  end

  # GET /tour_visitors/1
  # GET /tour_visitors/1.json
  def show
    if(params.has_key?(:venue_visitors_id))
      @tour_visitors = VenueVisitor.find(params[:venue_visitor_id]).tour_visitors
    else
      @tour_visitor = TourVisitor.find(params[:id])
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tour_visitor }
    end
  end

  # GET /tour_visitors/new
  # GET /tour_visitors/new.json
  def new
    @venue_visitor = VenueVisitor.find(params[:venue_visitor_id])
    @tour_visitor = TourVisitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tour_visitor }
    end
  end

  # GET /tour_visitors/1/edit
  def edit
    @venue_visitor = VenueVisitor.find(params[:venue_visitor_id])
    @tour_visitor = TourVisitor.find(params[:id])
  end

  # POST /tour_visitors
  # POST /tour_visitors.json
  def create
    @venue_visitor = VenueVisitor.find(params[:venue_visitor_id])
    @tour_visitor = TourVisitor.new(params[:tour_visitor])

    respond_to do |format|
      if @tour_visitor.save
        format.html { redirect_to venue_visitor_tour_visitor_path(@venue_visitor,@tour_visitor), notice: 'Tour visitor was successfully created.' }
        format.json { render json: @tour_visitor, status: :created, location: @tour_visitor }
      else
        format.html { render action: "new" }
        format.json { render json: @tour_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tour_visitors/1
  # PUT /tour_visitors/1.json
  def update
    # @venue_visitor = VenueVisitor.find(params[:venue_visitor_id])
    @tour_visitor = TourVisitor.find(params[:id])

    respond_to do |format|
      if @tour_visitor.update_attributes(params[:tour_visitor])
        format.html { redirect_to @tour_visitor, notice: 'Tour visitor was successfully updated.' }
        format.json { render @tour_visitor }
      else
        format.html { render action: "edit" }
        format.json { render json: @tour_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_visitors/1
  # DELETE /tour_visitors/1.json
  def destroy
    @tour_visitor = TourVisitor.find(params[:id])
    @tour_visitor.destroy

    respond_to do |format|
      format.html { redirect_to tour_visitors_url }
      format.json { head :no_content }
    end
  end

  # GET /tour_visitors/1/tour.json
  def tour
    @tour_visitor = TourVisitor.find(params[:id])
    @tour = @tour_visitor. tour

    respond_to do |format|
      format.json { render json: @tour }
    end
  end
end
