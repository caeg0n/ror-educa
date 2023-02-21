require "test_helper"

class StundentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stundent = stundents(:one)
  end

  test "should get index" do
    get stundents_url
    assert_response :success
  end

  test "should get new" do
    get new_stundent_url
    assert_response :success
  end

  test "should create stundent" do
    assert_difference("Stundent.count") do
      post stundents_url, params: { stundent: { birth: @stundent.birth, name: @stundent.name } }
    end

    assert_redirected_to stundent_url(Stundent.last)
  end

  test "should show stundent" do
    get stundent_url(@stundent)
    assert_response :success
  end

  test "should get edit" do
    get edit_stundent_url(@stundent)
    assert_response :success
  end

  test "should update stundent" do
    patch stundent_url(@stundent), params: { stundent: { birth: @stundent.birth, name: @stundent.name } }
    assert_redirected_to stundent_url(@stundent)
  end

  test "should destroy stundent" do
    assert_difference("Stundent.count", -1) do
      delete stundent_url(@stundent)
    end

    assert_redirected_to stundents_url
  end
end
