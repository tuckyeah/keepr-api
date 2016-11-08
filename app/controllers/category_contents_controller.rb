class CategoryContentsController < OpenReadController
  before_action :set_category_content, only: [:update, :destroy]

  # GET /category_contents
  # GET /category_contents.json
  def index
    if params
      @category_contents = CategoryContent.find_by({
        category_id: params[:category_id],
        thing_id: params[:thing_id]})
    else
      @category_contents = CategoryContent.all
    end

    render json: @category_contents
  end

  # GET /category_contents/1
  # GET /category_contents/1.json
  def show
    # @thing = Thing.find(params[:id])
    @category_content = CategoryContent.find(params[:id])
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
