require "application_system_test_case"

class SponsorLevelsTest < ApplicationSystemTestCase
  setup do
    @sponsor_level = sponsor_levels(:one)
  end

  test "visiting the index" do
    visit sponsor_levels_url
    assert_selector "h1", text: "Sponsor levels"
  end

  test "should create sponsor level" do
    visit sponsor_levels_url
    click_on "New sponsor level"

    fill_in "Description", with: @sponsor_level.Description
    fill_in "Level id", with: @sponsor_level.Level_ID
    fill_in "Level name", with: @sponsor_level.Level_Name
    fill_in "Value", with: @sponsor_level.Value
    click_on "Create Sponsor level"

    assert_text "Sponsor level was successfully created"
    click_on "Back"
  end

  test "should update Sponsor level" do
    visit sponsor_level_url(@sponsor_level)
    click_on "Edit this sponsor level", match: :first

    fill_in "Description", with: @sponsor_level.Description
    fill_in "Level id", with: @sponsor_level.Level_ID
    fill_in "Level name", with: @sponsor_level.Level_Name
    fill_in "Value", with: @sponsor_level.Value
    click_on "Update Sponsor level"

    assert_text "Sponsor level was successfully updated"
    click_on "Back"
  end

  test "should destroy Sponsor level" do
    visit sponsor_level_url(@sponsor_level)
    click_on "Destroy this sponsor level", match: :first

    assert_text "Sponsor level was successfully destroyed"
  end
end
