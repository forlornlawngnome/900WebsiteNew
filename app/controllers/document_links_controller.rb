class DocumentLinksController < ApplicationController
  before_action :set_document_link, only: [:show, :edit, :update, :destroy]

  # GET /document_links
  # GET /document_links.json
  def index
    @document_links = DocumentLink.all
  end

  # GET /document_links/1
  # GET /document_links/1.json
  def show
  end

  # GET /document_links/new
  def new
    @document_link = DocumentLink.new
  end

  # GET /document_links/1/edit
  def edit
  end

  # POST /document_links
  # POST /document_links.json
  def create
    @document_link = DocumentLink.new(document_link_params)

    respond_to do |format|
      if @document_link.save
        format.html { redirect_to @document_link, notice: 'Document link was successfully created.' }
        format.json { render :show, status: :created, location: @document_link }
      else
        format.html { render :new }
        format.json { render json: @document_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /document_links/1
  # PATCH/PUT /document_links/1.json
  def update
    respond_to do |format|
      if @document_link.update(document_link_params)
        format.html { redirect_to @document_link, notice: 'Document link was successfully updated.' }
        format.json { render :show, status: :ok, location: @document_link }
      else
        format.html { render :edit }
        format.json { render json: @document_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_links/1
  # DELETE /document_links/1.json
  def destroy
    @document_link.destroy
    respond_to do |format|
      format.html { redirect_to document_links_url, notice: 'Document link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document_link
      @document_link = DocumentLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def document_link_params
      params.require(:document_link).permit(:document_id, :doc_link, :name)
    end
end
