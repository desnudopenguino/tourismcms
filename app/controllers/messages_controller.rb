class MessagesController < ApplicationController
  # GET /messages
  # GET /messages.json
  def index
    if(params.has_key?(:attraction_tour_id))
      @attraction_tour = AttractionTour.find(params[:attraction_tour_id])
      @messages = AttractionTour.find(params[:attraction_tour_id]).messages
    else
      @messages = Message.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messages }
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    @message = Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message }
    end
  end

  # GET /messages/new
  # GET /messages/new.json
  def new
    @attraction_tour = AttractionTour.find(params[:attraction_tour_id])
    @message = Message.new

    #respond_to do |format|
    #  format.html # new.html.erb
    #  format.json { render json: @message }
    #end
  end

  # GET /messages/1/edit
  def edit
    @message = Message.find(params[:id])
  end

  # POST /messages
  # POST /messages.json
  def create
    @attraction_tour = AttractionTour.find(params[:attraction_tour_id])
    @message = @attraction_tour.messages.create(params[:message])

    respond_to do |format|
      if @message.save
        format.html { redirect_to attraction_tour_messages_path(@attraction_tour), notice: 'Message was successfully created.' }
        format.json { render json: @message, status: :created, location: @message }
      else
        format.html { render action: "new" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /messages/1
  # PUT /messages/1.json
  def update
    @message = Message.find(params[:id])

    respond_to do |format|
      if @message.update_attributes(params[:message])
        format.html { redirect_to @message, notice: 'Message was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message = Message.find(params[:id])
    @attraction_tour = @message.attraction_tour
    @message.destroy

    respond_to do |format|
      format.html { redirect_to attraction_tour_path(@attraction_tour) }
      format.json { head :no_content }
    end
  end
end
