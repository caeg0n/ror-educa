require "test_helper"

class CourseTeacherSchoolInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_teacher_school_info = course_teacher_school_infos(:one)
  end

  test "should get index" do
    get course_teacher_school_infos_url, as: :json
    assert_response :success
  end

  test "should create course_teacher_school_info" do
    assert_difference("CourseTeacherSchoolInfo.count") do
      post course_teacher_school_infos_url, params: { course_teacher_school_info: { classroom_id: @course_teacher_school_info.classroom_id, course_id: @course_teacher_school_info.course_id, teacher_school_info_id: @course_teacher_school_info.teacher_school_info_id } }, as: :json
    end

    assert_response :created
  end

  test "should show course_teacher_school_info" do
    get course_teacher_school_info_url(@course_teacher_school_info), as: :json
    assert_response :success
  end

  test "should update course_teacher_school_info" do
    patch course_teacher_school_info_url(@course_teacher_school_info), params: { course_teacher_school_info: { classroom_id: @course_teacher_school_info.classroom_id, course_id: @course_teacher_school_info.course_id, teacher_school_info_id: @course_teacher_school_info.teacher_school_info_id } }, as: :json
    assert_response :success
  end

  test "should destroy course_teacher_school_info" do
    assert_difference("CourseTeacherSchoolInfo.count", -1) do
      delete course_teacher_school_info_url(@course_teacher_school_info), as: :json
    end

    assert_response :no_content
  end
end
