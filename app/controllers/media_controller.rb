class MediaController < ApplicationController
  # GET /media
  # GET /media.json
  def index
    @multimedia = find_media
    @media = @multimedia.media

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @media }
    end
  end

  def show
    @medium = Medium.find(params[:id])

  end

  # GET /media/1/edit
  def edit
    @multimedia = find_media 
    @medium = Medium.find(params[:id])
  end

  # POST /media
  # POST /media.json
  def create
    @multimedia = find_media
    #@medium = Medium.new(params[:medium])
    @medium = @multimedia.media.build(params[:medium])

    respond_to do |format|
      if @medium.save
        #redirect_to :id => nil
        format.html { redirect_to @multimedia, notice: 'Medium was successfully created.' }
        #format.json { render json: @medium, status: :created, location: @medium }
      else
        render :action => 'new'
        # format.html { render action: "new" }
        # format.json { render json: @medium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /media/1
  # PUT /media/1.json
  def update
    @medium = Medium.find(params[:id])
    @medium.update_attributes(params[:medium])
    @parent = @medium.multimedia
    respond_to do |format|
        format.html { render edit_medium(@medium) }
        format.json { head :no_content }
    end
  end

  # DELETE /media/1
  # DELETE /media/1.json
  def destroy
    @multimedia = find_media
    @medium = Medium.find(params[:id])
    @medium.destroy

    respond_to do |format|
      format.html { redirect_to @multimedia }
      format.json { head :no_content }
    end
  end
  
  def find_media
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
end
