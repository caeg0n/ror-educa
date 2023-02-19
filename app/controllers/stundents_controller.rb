class StundentsController < ApplicationController
  before_action :set_stundent, only: %i[ show update destroy ]

  # GET /stundents
  def index
    @stundents = Stundent.all

    render json: @stundents
  end

  # GET /stundents/1
  def show
    render json: @stundent
  end

  # POST /stundents
  def create
    @stundent = Stundent.new(stundent_params)

    if @stundent.save
      render json: @stundent, status: :created, location: @stundent
    else
      render json: @stundent.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stundents/1
  def update
    if @stundent.update(stundent_params)
      render json: @stundent
    else
      render json: @stundent.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stundents/1
  def destroy
    @stundent.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stundent
      @stundent = Stundent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stundent_params
      params.require(:stundent).permit(:name, :birth)
    end
end
