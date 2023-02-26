class LocalitiesController < ApplicationController
  before_action :set_locality, only: %i[ show update destroy ]

  # GET /localities
  def index
    @localities = Locality.all

    render json: @localities
  end

  # GET /localities/1
  def show
    render json: @locality
  end

  # POST /localities
  def create
    @locality = Locality.new(locality_params)

    if @locality.save
      render json: @locality, status: :created, location: @locality
    else
      render json: @locality.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /localities/1
  def update
    if @locality.update(locality_params)
      render json: @locality
    else
      render json: @locality.errors, status: :unprocessable_entity
    end
  end

  # DELETE /localities/1
  def destroy
    @locality.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locality
      @locality = Locality.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def locality_params
      params.require(:locality).permit(:name)
    end
end
