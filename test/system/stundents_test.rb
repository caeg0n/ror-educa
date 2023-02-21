require "application_system_test_case"

class StundentsTest < ApplicationSystemTestCase
  setup do
    @stundent = stundents(:one)
  end

  test "visiting the index" do
    visit stundents_url
    assert_selector "h1", text: "Stundents"
  end

  test "should create stundent" do
    visit stundents_url
    click_on "New stundent"

    fill_in "Birth", with: @stundent.birth
    fill_in "Name", with: @stundent.name
    click_on "Create Stundent"

    assert_text "Stundent was successfully created"
    click_on "Back"
  end

  test "should update Stundent" do
    visit stundent_url(@stundent)
    click_on "Edit this stundent", match: :first

    fill_in "Birth", with: @stundent.birth
    fill_in "Name", with: @stundent.name
    click_on "Update Stundent"

    assert_text "Stundent was successfully updated"
    click_on "Back"
  end

  test "should destroy Stundent" do
    visit stundent_url(@stundent)
    click_on "Destroy this stundent", match: :first

    assert_text "Stundent was successfully destroyed"
  end
end
