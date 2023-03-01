class TeacherSchoolInfosController < ApplicationController
  before_action :set_teacher_school_info, only: %i[ show update destroy ]

  # GET /teacher_school_infos
  def index
    @teacher_school_infos = TeacherSchoolInfo.all

    render json: @teacher_school_infos
  end

  # GET /teacher_school_infos/1
  def show
    render json: @teacher_school_info
  end

  # POST /teacher_school_infos
  def create
    @teacher_school_info = TeacherSchoolInfo.new(teacher_school_info_params)

    if @teacher_school_info.save
      render json: @teacher_school_info, status: :created, location: @teacher_school_info
    else
      render json: @teacher_school_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teacher_school_infos/1
  def update
    if @teacher_school_info.update(teacher_school_info_params)
      render json: @teacher_school_info
    else
      render json: @teacher_school_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teacher_school_infos/1
  def destroy
    @teacher_school_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_school_info
      @teacher_school_info = TeacherSchoolInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teacher_school_info_params
      params.require(:teacher_school_info).permit(:school_id, :teacher_id)
    end
end
