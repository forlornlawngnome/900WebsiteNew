class AboutPhotosController < ApplicationController
  before_action :set_about_photo, only: [:show, :edit, :update, :destroy]

  # GET /about_photos
  # GET /about_photos.json
  def index
    @about_photos = AboutPhoto.all
  end

  # GET /about_photos/1
  # GET /about_photos/1.json
  def show
  end

  # GET /about_photos/new
  def new
    @about_photo = AboutPhoto.new
  end

  # GET /about_photos/1/edit
  def edit
  end

  # POST /about_photos
  # POST /about_photos.json
  def create
    @about_photo = AboutPhoto.new(about_photo_params)

    respond_to do |format|
      if @about_photo.save
        format.html { redirect_to @about_photo, notice: 'About photo was successfully created.' }
        format.json { render :show, status: :created, location: @about_photo }
      else
        format.html { render :new }
        format.json { render json: @about_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_photos/1
  # PATCH/PUT /about_photos/1.json
  def update
    respond_to do |format|
      if @about_photo.update(about_photo_params)
        format.html { redirect_to @about_photo, notice: 'About photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @about_photo }
      else
        format.html { render :edit }
        format.json { render json: @about_photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_photos/1
  # DELETE /about_photos/1.json
  def destroy
    @about_photo.destroy
    respond_to do |format|
      format.html { redirect_to about_photos_url, notice: 'About photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_photo
      @about_photo = AboutPhoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_photo_params
      params.require(:about_photo).permit(:name, :image)
    end
end
