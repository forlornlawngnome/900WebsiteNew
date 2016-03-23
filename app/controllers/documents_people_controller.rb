class DocumentsPeopleController < ApplicationController
  before_action :set_documents_person, only: [:show, :edit, :update, :destroy]

  # GET /documents_people
  # GET /documents_people.json
  def index
    @documents_people = DocumentsPerson.all
  end

  # GET /documents_people/1
  # GET /documents_people/1.json
  def show
  end

  # GET /documents_people/new
  def new
    @documents_person = DocumentsPerson.new
  end

  # GET /documents_people/1/edit
  def edit
  end

  # POST /documents_people
  # POST /documents_people.json
  def create
    @documents_person = DocumentsPerson.new(documents_person_params)

    respond_to do |format|
      if @documents_person.save
        format.html { redirect_to @documents_person, notice: 'Documents person was successfully created.' }
        format.json { render :show, status: :created, location: @documents_person }
      else
        format.html { render :new }
        format.json { render json: @documents_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents_people/1
  # PATCH/PUT /documents_people/1.json
  def update
    respond_to do |format|
      if @documents_person.update(documents_person_params)
        format.html { redirect_to @documents_person, notice: 'Documents person was successfully updated.' }
        format.json { render :show, status: :ok, location: @documents_person }
      else
        format.html { render :edit }
        format.json { render json: @documents_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents_people/1
  # DELETE /documents_people/1.json
  def destroy
    @documents_person.destroy
    respond_to do |format|
      format.html { redirect_to documents_people_url, notice: 'Documents person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documents_person
      @documents_person = DocumentsPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def documents_person_params
      params.require(:documents_person).permit(:person_id, :document_id)
    end
end
