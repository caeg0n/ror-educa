require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url, as: :json
    assert_response :success
  end

  test "should create student" do
    assert_difference("Student.count") do
      post students_url, params: { student: { birth: @student.birth, classroom_id: @student.classroom_id, inep: @student.inep, name: @student.name, status: @student.status, transportation: @student.transportation } }, as: :json
    end

    assert_response :created
  end

  test "should show student" do
    get student_url(@student), as: :json
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { birth: @student.birth, classroom_id: @student.classroom_id, inep: @student.inep, name: @student.name, status: @student.status, transportation: @student.transportation } }, as: :json
    assert_response :success
  end

  test "should destroy student" do
    assert_difference("Student.count", -1) do
      delete student_url(@student), as: :json
    end

    assert_response :no_content
  end
end
