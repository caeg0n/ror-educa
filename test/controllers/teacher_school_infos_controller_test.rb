require "test_helper"

class TeacherSchoolInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_school_info = teacher_school_infos(:one)
  end

  test "should get index" do
    get teacher_school_infos_url, as: :json
    assert_response :success
  end

  test "should create teacher_school_info" do
    assert_difference("TeacherSchoolInfo.count") do
      post teacher_school_infos_url, params: { teacher_school_info: { school_id: @teacher_school_info.school_id, teacher_id: @teacher_school_info.teacher_id } }, as: :json
    end

    assert_response :created
  end

  test "should show teacher_school_info" do
    get teacher_school_info_url(@teacher_school_info), as: :json
    assert_response :success
  end

  test "should update teacher_school_info" do
    patch teacher_school_info_url(@teacher_school_info), params: { teacher_school_info: { school_id: @teacher_school_info.school_id, teacher_id: @teacher_school_info.teacher_id } }, as: :json
    assert_response :success
  end

  test "should destroy teacher_school_info" do
    assert_difference("TeacherSchoolInfo.count", -1) do
      delete teacher_school_info_url(@teacher_school_info), as: :json
    end

    assert_response :no_content
  end
end
