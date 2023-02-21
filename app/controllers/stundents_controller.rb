class StundentsController < ApplicationController
  before_action :set_stundent, only: %i[ show edit update destroy ]

  # GET /stundents
  def index
    @stundents = Stundent.all
  end

  # GET /stundents/1
  def show
  end

  # GET /stundents/new
  def new
    @stundent = Stundent.new
  end

  # GET /stundents/1/edit
  def edit
  end

  # POST /stundents
  def create
    @stundent = Stundent.new(stundent_params)

    if @stundent.save
      redirect_to @stundent, notice: "Stundent was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stundents/1
  def update
    if @stundent.update(stundent_params)
      redirect_to @stundent, notice: "Stundent was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /stundents/1
  def destroy
    @stundent.destroy
    redirect_to stundents_url, notice: "Stundent was successfully destroyed."
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
