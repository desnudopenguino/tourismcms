class TimeVisitorsController < ApplicationController
  # GET /time_visitors
  # GET /time_visitors.json
  def index
    @time_visitors = TimeVisitor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @time_visitors }
    end
  end

  # GET /time_visitors/1
  # GET /time_visitors/1.json
  def show
    @time_visitor = TimeVisitor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @time_visitor }
    end
  end

  # GET /time_visitors/new
  # GET /time_visitors/new.json
  def new
    @time_visitor = TimeVisitor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @time_visitor }
    end
  end

  # GET /time_visitors/1/edit
  def edit
    @time_visitor = TimeVisitor.find(params[:id])
  end

  # POST /time_visitors
  # POST /time_visitors.json
  def create
    @time_visitor = TimeVisitor.new(params[:time_visitor])

    respond_to do |format|
      if @time_visitor.save
        format.html { redirect_to @time_visitor, notice: 'Time visitor was successfully created.' }
        format.json { render json: @time_visitor, status: :created, location: @time_visitor }
      else
        format.html { render action: "new" }
        format.json { render json: @time_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /time_visitors/1
  # PUT /time_visitors/1.json
  def update
    @time_visitor = TimeVisitor.find(params[:id])

    respond_to do |format|
      if @time_visitor.update_attributes(params[:time_visitor])
        format.html { redirect_to @time_visitor, notice: 'Time visitor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @time_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_visitors/1
  # DELETE /time_visitors/1.json
  def destroy
    @time_visitor = TimeVisitor.find(params[:id])
    @time_visitor.destroy

    respond_to do |format|
      format.html { redirect_to time_visitors_url }
      format.json { head :no_content }
    end
  end
end