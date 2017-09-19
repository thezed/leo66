class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  include ::TheSortableTreeController::Rebuild
  
  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.nested_set
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find_by(permalink: params[:path].split('/').last) if params[:path].present?
    @stands = @category.stands.order(id: :asc).paginate :page => params[:page], :per_page => 24
    @thumbs = @category.stands
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find_by(permalink: params[:path].split('/').last) if params[:path].present?
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        @category.save_absolute_permalink
        format.html { redirect_to categories_url, notice: 'Сохранено' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update    
    respond_to do |format|
      if @category.update(category_params)
        @category.save_absolute_permalink
        format.html { redirect_to categories_url, notice: 'Сохранено' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { redirect_to categories_url }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category = Category.find_by(permalink: params[:path].split('/').last) if params[:path].present?
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Удалено' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find_by(permalink: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :permalink, :text, :absolute_permalink)
    end
end
