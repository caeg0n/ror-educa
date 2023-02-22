require "test_helper"

class StundentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stundent = stundents(:one)
  end

  test "should get index" do
    get stundents_url, as: :json
    assert_response :success
  end

  test "should create stundent" do
    assert_difference("Stundent.count") do
      post stundents_url, params: { stundent: { birth: @stundent.birth, name: @stundent.name } }, as: :json
    end

    assert_response :created
  end

  test "should show stundent" do
    get stundent_url(@stundent), as: :json
    assert_response :success
  end

  test "should update stundent" do
    patch stundent_url(@stundent), params: { stundent: { birth: @stundent.birth, name: @stundent.name } }, as: :json
    assert_response :success
  end

  test "should destroy stundent" do
    assert_difference("Stundent.count", -1) do
      delete stundent_url(@stundent), as: :json
    end

    assert_response :no_content
  end
end
