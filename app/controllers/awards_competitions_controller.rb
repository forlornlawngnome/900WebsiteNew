class AwardsCompetitionsController < ApplicationController
  before_action :set_awards_competition, only: [:show, :edit, :update, :destroy]

  # GET /awards_competitions
  # GET /awards_competitions.json
  def index
    @awards_competitions = AwardsCompetition.all
  end

  # GET /awards_competitions/1
  # GET /awards_competitions/1.json
  def show
  end

  # GET /awards_competitions/new
  def new
    @awards_competition = AwardsCompetition.new
  end

  # GET /awards_competitions/1/edit
  def edit
  end

  # POST /awards_competitions
  # POST /awards_competitions.json
  def create
    @awards_competition = AwardsCompetition.new(awards_competition_params)

    respond_to do |format|
      if @awards_competition.save
        format.html { redirect_to @awards_competition, notice: 'Awards competition was successfully created.' }
        format.json { render :show, status: :created, location: @awards_competition }
      else
        format.html { render :new }
        format.json { render json: @awards_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /awards_competitions/1
  # PATCH/PUT /awards_competitions/1.json
  def update
    respond_to do |format|
      if @awards_competition.update(awards_competition_params)
        format.html { redirect_to @awards_competition, notice: 'Awards competition was successfully updated.' }
        format.json { render :show, status: :ok, location: @awards_competition }
      else
        format.html { render :edit }
        format.json { render json: @awards_competition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awards_competitions/1
  # DELETE /awards_competitions/1.json
  def destroy
    @awards_competition.destroy
    respond_to do |format|
      format.html { redirect_to awards_competitions_url, notice: 'Awards competition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_awards_competition
      @awards_competition = AwardsCompetition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def awards_competition_params
      params.require(:awards_competition).permit(:competition_id, :award_id, :blurb)
    end
end
