require "application_system_test_case"

class MarketingsTest < ApplicationSystemTestCase
  setup do
    @marketing = marketings(:one)
  end

  test "visiting the index" do
    visit marketings_url
    assert_selector "h1", text: "Marketings"
  end

  test "should create marketing" do
    visit marketings_url
    click_on "New marketing"

    fill_in "Content", with: @marketing.Content
    fill_in "Content name", with: @marketing.Content_Name
    fill_in "Description", with: @marketing.Description
    fill_in "Marcom id", with: @marketing.Marcom_ID
    fill_in "Note", with: @marketing.Note
    fill_in "Person in charge", with: @marketing.Person_in_Charge
    fill_in "Social networking platform", with: @marketing.Social_Networking_Platform
    click_on "Create Marketing"

    assert_text "Marketing was successfully created"
    click_on "Back"
  end

  test "should update Marketing" do
    visit marketing_url(@marketing)
    click_on "Edit this marketing", match: :first

    fill_in "Content", with: @marketing.Content
    fill_in "Content name", with: @marketing.Content_Name
    fill_in "Description", with: @marketing.Description
    fill_in "Marcom id", with: @marketing.Marcom_ID
    fill_in "Note", with: @marketing.Note
    fill_in "Person in charge", with: @marketing.Person_in_Charge
    fill_in "Social networking platform", with: @marketing.Social_Networking_Platform
    click_on "Update Marketing"

    assert_text "Marketing was successfully updated"
    click_on "Back"
  end

  test "should destroy Marketing" do
    visit marketing_url(@marketing)
    click_on "Destroy this marketing", match: :first

    assert_text "Marketing was successfully destroyed"
  end
end
