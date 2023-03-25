require "test_helper"

class ResponsiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsible = responsibles(:one)
  end

  test "should get index" do
    get responsibles_url, as: :json
    assert_response :success
  end

  test "should create responsible" do
    assert_difference("Responsible.count") do
      post responsibles_url, params: { responsible: { name: @responsible.name, phone: @responsible.phone, student_id: @responsible.student_id } }, as: :json
    end

    assert_response :created
  end

  test "should show responsible" do
    get responsible_url(@responsible), as: :json
    assert_response :success
  end

  test "should update responsible" do
    patch responsible_url(@responsible), params: { responsible: { name: @responsible.name, phone: @responsible.phone, student_id: @responsible.student_id } }, as: :json
    assert_response :success
  end

  test "should destroy responsible" do
    assert_difference("Responsible.count", -1) do
      delete responsible_url(@responsible), as: :json
    end

    assert_response :no_content
  end
end
