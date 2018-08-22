class SouthernculturesController < OpenReadController
  before_action :set_southernculture, only: [:show, :update, :destroy]

  # GET /southerncultures
  def index
    @southerncultures = Southernculture.all

    render json: @southerncultures
  end

  # GET /southerncultures/1
  def show
    render json: @southernculture
  end

  # POST /southerncultures
  def create
    
    @southernculture = current_user.southerncultures.build(southernculture_params) # @southernculture = Southernculture.new(southernculture_params)

    if @southernculture.save
      render json: @southernculture, status: :created, location: @southernculture
    else
      render json: @southernculture.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /southerncultures/1
  def update
    if @southernculture.update(southernculture_params)
      render json: @southernculture
    else
      render json: @southernculture.errors, status: :unprocessable_entity
    end
  end

  # DELETE /southerncultures/1
  def destroy
    @southernculture.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_southernculture
      @southernculture = Southernculture.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def southernculture_params
      params.require(:southernculture).permit(:quote, :user_id, :about, :image)
    end
end
