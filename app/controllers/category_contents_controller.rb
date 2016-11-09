class CategoryContentsController < ProtectedController
  before_action :set_category_content, only: [:update, :destroy]

  # GET /category_contents/1
  # GET /category_contents/1.json
  def show
    @category_content = CategoryContent.find(params[:id])

    if is_owner
      render json: @category_content
    else
      render json: @category_content.errors, status: :unauthorized
    end
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

    if !is_owner
      render json @category_content.errors, status: :unauthorized
    elsif @category_content.update(category_content_params)
      head :no_content
    else
      render json: @category_content.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category_contents/1
  # DELETE /category_contents/1.json
  def destroy
    if is_owner
      @category_content.destroy
      head :no_content
    else
      render status: :unauthorized
    end
  end

  private

    def is_owner
      @category_content = CategoryContent.find(params[:id])
      @category_content.category.user_id == @current_user.id
    end

    def set_category_content
      @category_content = CategoryContent.find(params[:id])
    end

    def category_content_params
      params.require(:category_content).permit(:category_id, :thing_id, :notes, :done)
    end
end
