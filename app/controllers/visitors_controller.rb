class VisitorsController < ApplicationController
  # GET /visitors
  # GET /visitors.json
  def index
    @visitors = Visitor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @visitors }
    end
  end

  # GET /visitors/1
  # GET /visitors/1.json
  def show
    @visitor = Visitor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @visitor }
    end
  end

  # GET /visitors/new
  # GET /visitors/new.json
  def new
    @visitor = Visitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @visitor }
    end
  end

  # GET /visitors/1/edit
  def edit
    @visitor = Visitor.find(params[:id])
  end

  # POST /visitors
  # POST /visitors.json
  def create
    @visitor = Visitor.find_or_create_by_oid(params[:visitor][:oid] )
    @venue_visitor = @visitor.venue_visitors.find_or_create_by_venue_id(params[:venue_visitor][:venue_id])
 
    if(@venue_visitor.tour_visitors.find_by_progress([0,1,2,3]))
      @tour_visitor = @venue_visitor.tour_visitors.find_by_progress([0,1,2,3])
    else
      @tour_visitor = @venue_visitor.tour_visitors.create
    end
    respond_to do |format|
      if @tour_visitor.save
        format.json { render json: @tour_visitor.to_json(:only => :id)  }
      end
    end
  end

  # PUT /visitors/1
  # PUT /visitors/1.json
  def update
    @visitor = Visitor.find(params[:id])

    respond_to do |format|
      if @visitor.update_attributes(params[:visitor])
        format.html { redirect_to @visitor, notice: 'Visitor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitors/1
  # DELETE /visitors/1.json
  def destroy
    @visitor = Visitor.find(params[:id])
    @visitor.destroy

    respond_to do |format|
      format.html { redirect_to visitors_url }
      format.json { head :no_content }
    end
  end
end
