class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authorize, :only => [:labs]
  
  # GET /documents
  # GET /documents.json
  def index
    @documents = Document.all
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
  end

  # GET /documents/new
  def new
    @document = Document.new
  end
  
  def labs
    @categories =Category.joins(:documents).order("name").uniq.all
    @people = Person.all
    
    @search = Document.search(params[:q])
    @documents = @search.result.order("date_published desc").page params[:page]
    first_doc = Document.order("date_published").limit(1).first
    docs = Document.order("date_published desc").all
    month_range = docs.group_by {|p| p.date_published.beginning_of_month}
    @range = month_range.group_by { |d| d[0].beginning_of_year}
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  # POST /documents.json
  def create
    @document = Document.new(document_params)

    respond_to do |format|
      if @document.save
        format.html { redirect_to @document, notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @document }
      else
        format.html { render :new }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:name, :date_published, :about, :category_id, document_links_attributes: [:id, :document_id, :doc_link, :name, :_destroy], :person_ids=>[])
    end
end
