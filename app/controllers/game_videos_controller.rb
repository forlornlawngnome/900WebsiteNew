class GameVideosController < ApplicationController
  before_action :set_game_video, only: [:show, :edit, :update, :destroy]

  # GET /game_videos
  # GET /game_videos.json
  def index
    @game_videos = GameVideo.all
  end

  # GET /game_videos/1
  # GET /game_videos/1.json
  def show
  end

  # GET /game_videos/new
  def new
    @game_video = GameVideo.new
  end

  # GET /game_videos/1/edit
  def edit
  end

  # POST /game_videos
  # POST /game_videos.json
  def create
    @game_video = GameVideo.new(game_video_params)

    respond_to do |format|
      if @game_video.save
        format.html { redirect_to @game_video, notice: 'Game video was successfully created.' }
        format.json { render :show, status: :created, location: @game_video }
      else
        format.html { render :new }
        format.json { render json: @game_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_videos/1
  # PATCH/PUT /game_videos/1.json
  def update
    respond_to do |format|
      if @game_video.update(game_video_params)
        format.html { redirect_to @game_video, notice: 'Game video was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_video }
      else
        format.html { render :edit }
        format.json { render json: @game_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_videos/1
  # DELETE /game_videos/1.json
  def destroy
    @game_video.destroy
    respond_to do |format|
      format.html { redirect_to game_videos_url, notice: 'Game video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_video
      @game_video = GameVideo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_video_params
      params.require(:game_video).permit(:game_id, :title, :link)
    end
end
