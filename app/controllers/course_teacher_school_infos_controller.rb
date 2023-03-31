class CourseTeacherSchoolInfosController < ApplicationController
  before_action :set_course_teacher_school_info, only: %i[ show update destroy ]

  # GET /course_teacher_school_infos
  def index
    @course_teacher_school_infos = CourseTeacherSchoolInfo.all

    render json: @course_teacher_school_infos
  end

  # GET /course_teacher_school_infos/1
  def show
    render json: @course_teacher_school_info
  end

  # POST /course_teacher_school_infos
  def create
    @course_teacher_school_info = CourseTeacherSchoolInfo.new(course_teacher_school_info_params)

    if @course_teacher_school_info.save
      render json: @course_teacher_school_info, status: :created, location: @course_teacher_school_info
    else
      render json: @course_teacher_school_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /course_teacher_school_infos/1
  def update
    if @course_teacher_school_info.update(course_teacher_school_info_params)
      render json: @course_teacher_school_info
    else
      render json: @course_teacher_school_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /course_teacher_school_infos/1
  def destroy
    @course_teacher_school_info.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_teacher_school_info
      @course_teacher_school_info = CourseTeacherSchoolInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_teacher_school_info_params
      params.require(:course_teacher_school_info).permit(:course_id, :teacher_school_info_id, :classroom_id)
    end
end
