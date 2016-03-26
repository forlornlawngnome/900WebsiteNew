class HandbooksController < ApplicationController
  before_action :set_handbook, only: [:show, :edit, :update, :destroy]

  # GET /handbooks
  # GET /handbooks.json
  def index
    @handbooks = Handbook.all
  end

  # GET /handbooks/1
  # GET /handbooks/1.json
  def show
  end
  
  def handbook
  end

  # GET /handbooks/new
  def new
    @handbook = Handbook.new
  end

  # GET /handbooks/1/edit
  def edit
  end

  # POST /handbooks
  # POST /handbooks.json
  def create
    @handbook = Handbook.new(handbook_params)

    respond_to do |format|
      if @handbook.save
        format.html { redirect_to @handbook, notice: 'Handbook was successfully created.' }
        format.json { render :show, status: :created, location: @handbook }
      else
        format.html { render :new }
        format.json { render json: @handbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /handbooks/1
  # PATCH/PUT /handbooks/1.json
  def update
    respond_to do |format|
      if @handbook.update(handbook_params)
        format.html { redirect_to @handbook, notice: 'Handbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @handbook }
      else
        format.html { render :edit }
        format.json { render json: @handbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handbooks/1
  # DELETE /handbooks/1.json
  def destroy
    @handbook.destroy
    respond_to do |format|
      format.html { redirect_to handbooks_url, notice: 'Handbook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handbook
      @handbook = Handbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def handbook_params
      params.require(:handbook).permit(:handbook_link, :about)
    end
end
