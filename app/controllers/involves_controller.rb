class InvolvesController < ApplicationController
  before_action :set_involf, only: [:show, :edit, :update, :destroy]

  # GET /involves
  # GET /involves.json
  def index
    @involves = Involve.all
  end

  # GET /involves/1
  # GET /involves/1.json
  def show
  end

  # GET /involves/new
  def new
    @involf = Involve.new
  end

  # GET /involves/1/edit
  def edit
  end

  # POST /involves
  # POST /involves.json
  def create
    @involf = Involve.new(involf_params)

    respond_to do |format|
      if @involf.save
        format.html { redirect_to @involf, notice: 'Involve was successfully created.' }
        format.json { render :show, status: :created, location: @involf }
      else
        format.html { render :new }
        format.json { render json: @involf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /involves/1
  # PATCH/PUT /involves/1.json
  def update
    respond_to do |format|
      if @involf.update(involf_params)
        format.html { redirect_to @involf, notice: 'Involve was successfully updated.' }
        format.json { render :show, status: :ok, location: @involf }
      else
        format.html { render :edit }
        format.json { render json: @involf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /involves/1
  # DELETE /involves/1.json
  def destroy
    @involf.destroy
    respond_to do |format|
      format.html { redirect_to involves_url, notice: 'Involve was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def involved
    @blurbs = Involve.order(:order)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_involf
      @involf = Involve.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def involf_params
      params.require(:involve).permit(:blurb, :order)
    end
end
