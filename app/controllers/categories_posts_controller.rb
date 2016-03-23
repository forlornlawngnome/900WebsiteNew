class CategoriesPostsController < ApplicationController
  before_action :set_categories_post, only: [:show, :edit, :update, :destroy]

  # GET /categories_posts
  # GET /categories_posts.json
  def index
    @categories_posts = CategoriesPost.all
  end

  # GET /categories_posts/1
  # GET /categories_posts/1.json
  def show
  end

  # GET /categories_posts/new
  def new
    @categories_post = CategoriesPost.new
  end

  # GET /categories_posts/1/edit
  def edit
  end

  # POST /categories_posts
  # POST /categories_posts.json
  def create
    @categories_post = CategoriesPost.new(categories_post_params)

    respond_to do |format|
      if @categories_post.save
        format.html { redirect_to @categories_post, notice: 'Categories post was successfully created.' }
        format.json { render :show, status: :created, location: @categories_post }
      else
        format.html { render :new }
        format.json { render json: @categories_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories_posts/1
  # PATCH/PUT /categories_posts/1.json
  def update
    respond_to do |format|
      if @categories_post.update(categories_post_params)
        format.html { redirect_to @categories_post, notice: 'Categories post was successfully updated.' }
        format.json { render :show, status: :ok, location: @categories_post }
      else
        format.html { render :edit }
        format.json { render json: @categories_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories_posts/1
  # DELETE /categories_posts/1.json
  def destroy
    @categories_post.destroy
    respond_to do |format|
      format.html { redirect_to categories_posts_url, notice: 'Categories post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories_post
      @categories_post = CategoriesPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categories_post_params
      params.require(:categories_post).permit(:post_id, :category_id)
    end
end
