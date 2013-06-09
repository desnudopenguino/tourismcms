class VenueAssetsController < ApplicationController
  # GET /venue_assets
  # GET /venue_assets.json
  def index
    @venue_assets = VenueAsset.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @venue_assets }
    end
  end

  # GET /venue_assets/1
  # GET /venue_assets/1.json
  def show
    @venue_asset = VenueAsset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @venue_asset }
    end
  end

  # GET /venue_assets/new
  # GET /venue_assets/new.json
  def new
    @venue_asset = VenueAsset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @venue_asset }
    end
  end

  # GET /venue_assets/1/edit
  def edit
    @venue_asset = VenueAsset.find(params[:id])
  end

  # POST /venue_assets
  # POST /venue_assets.json
  def create
    @venue_asset = VenueAsset.new(params[:venue_asset])

    respond_to do |format|
      if @venue_asset.save
        format.html { redirect_to @venue_asset, notice: 'Venue asset was successfully created.' }
        format.json { render json: @venue_asset, status: :created, location: @venue_asset }
      else
        format.html { render action: "new" }
        format.json { render json: @venue_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /venue_assets/1
  # PUT /venue_assets/1.json
  def update
    @venue_asset = VenueAsset.find(params[:id])

    respond_to do |format|
      if @venue_asset.update_attributes(params[:venue_asset])
        format.html { redirect_to @venue_asset, notice: 'Venue asset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @venue_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venue_assets/1
  # DELETE /venue_assets/1.json
  def destroy
    @venue_asset = VenueAsset.find(params[:id])
    @venue_asset.destroy

    respond_to do |format|
      format.html { redirect_to venue_assets_url }
      format.json { head :no_content }
    end
  end
end
