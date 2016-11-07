class CategoryContentsController < ApplicationController
  before_action :set_category_content, only: [:show, :update, :destroy]
  # before_create :make_thing

  def make_thing
    @thing = Thing.new(category_content_params[:thing_name])
  end

  # GET /category_contents
  # GET /category_contents.json
  def index
    @category_contents = CategoryContent.all

    render json: @category_contents
  end

  # GET /category_contents/1
  # GET /category_contents/1.json
  def show
    render json: @category_content
  end

  # POST /category_contents
  # POST /category_contents.json
  def create
    @category_content = CategoryContent.new(category_content_params)

    if @category_content.save
      render json: @category_content, status: :created, location: @category_content
    else
      render json: @category_content.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /category_contents/1
  # PATCH/PUT /category_contents/1.json
  def update
    @category_content = CategoryContent.find(params[:id])

    if @category_content.update(category_content_params)
      head :no_content
    else
      render json: @category_content.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category_contents/1
  # DELETE /category_contents/1.json
  def destroy
    @category_content.destroy

    head :no_content
  end

  private

    def set_category_content
      @category_content = CategoryContent.find(params[:id])
    end

    def category_content_params
      params.require(:category_content).permit(:category_id, :thing_id, :notes, :done)
    end
end
