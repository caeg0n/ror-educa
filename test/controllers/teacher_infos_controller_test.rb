require "test_helper"

class TeacherInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teacher_info = teacher_infos(:one)
  end

  test "should get index" do
    get teacher_infos_url, as: :json
    assert_response :success
  end

  test "should create teacher_info" do
    assert_difference("TeacherInfo.count") do
      post teacher_infos_url, params: { teacher_info: { mail: @teacher_info.mail, name: @teacher_info.name, phone: @teacher_info.phone } }, as: :json
    end

    assert_response :created
  end

  test "should show teacher_info" do
    get teacher_info_url(@teacher_info), as: :json
    assert_response :success
  end

  test "should update teacher_info" do
    patch teacher_info_url(@teacher_info), params: { teacher_info: { mail: @teacher_info.mail, name: @teacher_info.name, phone: @teacher_info.phone } }, as: :json
    assert_response :success
  end

  test "should destroy teacher_info" do
    assert_difference("TeacherInfo.count", -1) do
      delete teacher_info_url(@teacher_info), as: :json
    end

    assert_response :no_content
  end
end
