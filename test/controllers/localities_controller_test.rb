require "test_helper"

class LocalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @locality = localities(:one)
  end

  test "should get index" do
    get localities_url, as: :json
    assert_response :success
  end

  test "should create locality" do
    assert_difference("Locality.count") do
      post localities_url, params: { locality: { name: @locality.name } }, as: :json
    end

    assert_response :created
  end

  test "should show locality" do
    get locality_url(@locality), as: :json
    assert_response :success
  end

  test "should update locality" do
    patch locality_url(@locality), params: { locality: { name: @locality.name } }, as: :json
    assert_response :success
  end

  test "should destroy locality" do
    assert_difference("Locality.count", -1) do
      delete locality_url(@locality), as: :json
    end

    assert_response :no_content
  end
end
