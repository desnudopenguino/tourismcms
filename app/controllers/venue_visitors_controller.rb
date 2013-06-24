class VenueVisitorsController < ApplicationController
  # GET /venue_visitors
  # GET /venue_visitors.json
  def index
    @venue_visitors = VenueVisitor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @venue_visitors }
    end
  end

  # GET /venue_visitors/1
  # GET /venue_visitors/1.json
  def show
    @venue_visitor = VenueVisitor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @venue_visitor }
    end
  end

  # GET /venue_visitors/new
  # GET /venue_visitors/new.json
  def new
    @venue_visitor = VenueVisitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @venue_visitor }
    end
  end

  # GET /venue_visitors/1/edit
  def edit
    @venue_visitor = VenueVisitor.find(params[:id])
  end

  # POST /venue_visitors
  # POST /venue_visitors.json
  def create
    @venue_visitor = VenueVisitor.new(params[:venue_visitor])

    respond_to do |format|
      if @venue_visitor.save
        format.html { redirect_to @venue_visitor, notice: 'Venue visitor was successfully created.' }
        format.json { render json: @venue_visitor, status: :created, location: @venue_visitor }
      else
        format.html { render action: "new" }
        format.json { render json: @venue_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /venue_visitors/1
  # PUT /venue_visitors/1.json
  def update
    @venue_visitor = VenueVisitor.find(params[:id])

    respond_to do |format|
      if @venue_visitor.update_attributes(params[:venue_visitor])
        format.html { redirect_to @venue_visitor, notice: 'Venue visitor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @venue_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venue_visitors/1
  # DELETE /venue_visitors/1.json
  def destroy
    @venue_visitor = VenueVisitor.find(params[:id])
    @venue_visitor.destroy

    respond_to do |format|
      format.html { redirect_to venue_visitors_url }
      format.json { head :no_content }
    end
  end
end
