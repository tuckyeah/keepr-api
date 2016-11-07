class ThingsController < OpenReadController
  before_action :set_thing, only: [:show, :update, :destroy]

  # GET /things
  # GET /things.json
  def index
    @things = Thing.all

    render json: @things
  end

  # GET /things/1
  # GET /things/1.json
  def show
    render json: @thing
  end

  # POST /things
  # POST /things.json
  def create
    @thing = Thing.new(thing_params)

    if @thing.save
      render json: @thing, status: :created, location: @thing
    else
      render json: @thing.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /things/1
  # PATCH/PUT /things/1.json
  def update
    @thing = Thing.find(params[:id])

    if @thing.update(thing_params)
      head :no_content
    else
      render json: @thing.errors, status: :unprocessable_entity
    end
  end

  # DELETE /things/1
  # DELETE /things/1.json
  def destroy
    @thing.destroy

    head :no_content
  end

  private

    def set_thing
      @thing = Thing.find(params[:id])
    end

    def thing_params
      params.require(:thing).permit(:name, :category_id)
    end
end
