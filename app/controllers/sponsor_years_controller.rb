class SponsorYearsController < ApplicationController
  before_action :set_sponsor_year, only: [:show, :edit, :update, :destroy]

  # GET /sponsor_years
  # GET /sponsor_years.json
  def index
    @sponsor_years = SponsorYear.all
  end

  # GET /sponsor_years/1
  # GET /sponsor_years/1.json
  def show
  end

  # GET /sponsor_years/new
  def new
    @sponsor_year = SponsorYear.new
  end

  # GET /sponsor_years/1/edit
  def edit
  end

  # POST /sponsor_years
  # POST /sponsor_years.json
  def create
    @sponsor_year = SponsorYear.new(sponsor_year_params)

    respond_to do |format|
      if @sponsor_year.save
        format.html { redirect_to @sponsor_year, notice: 'Sponsor year was successfully created.' }
        format.json { render :show, status: :created, location: @sponsor_year }
      else
        format.html { render :new }
        format.json { render json: @sponsor_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sponsor_years/1
  # PATCH/PUT /sponsor_years/1.json
  def update
    respond_to do |format|
      if @sponsor_year.update(sponsor_year_params)
        format.html { redirect_to @sponsor_year, notice: 'Sponsor year was successfully updated.' }
        format.json { render :show, status: :ok, location: @sponsor_year }
      else
        format.html { render :edit }
        format.json { render json: @sponsor_year.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sponsor_years/1
  # DELETE /sponsor_years/1.json
  def destroy
    @sponsor_year.destroy
    respond_to do |format|
      format.html { redirect_to sponsor_years_url, notice: 'Sponsor year was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sponsor_year
      @sponsor_year = SponsorYear.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sponsor_year_params
      params.require(:sponsor_year).permit(:sponsor_id, :year_id, :sponsor_level_id)
    end
end
