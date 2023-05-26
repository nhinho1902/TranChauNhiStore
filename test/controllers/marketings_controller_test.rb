require "test_helper"

class MarketingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marketing = marketings(:one)
  end

  test "should get index" do
    get marketings_url
    assert_response :success
  end

  test "should get new" do
    get new_marketing_url
    assert_response :success
  end

  test "should create marketing" do
    assert_difference("Marketing.count") do
      post marketings_url, params: { marketing: { Content: @marketing.Content, Content_Name: @marketing.Content_Name, Description: @marketing.Description, Marcom_ID: @marketing.Marcom_ID, Note: @marketing.Note, Person_in_Charge: @marketing.Person_in_Charge, Social_Networking_Platform: @marketing.Social_Networking_Platform } }
    end

    assert_redirected_to marketing_url(Marketing.last)
  end

  test "should show marketing" do
    get marketing_url(@marketing)
    assert_response :success
  end

  test "should get edit" do
    get edit_marketing_url(@marketing)
    assert_response :success
  end

  test "should update marketing" do
    patch marketing_url(@marketing), params: { marketing: { Content: @marketing.Content, Content_Name: @marketing.Content_Name, Description: @marketing.Description, Marcom_ID: @marketing.Marcom_ID, Note: @marketing.Note, Person_in_Charge: @marketing.Person_in_Charge, Social_Networking_Platform: @marketing.Social_Networking_Platform } }
    assert_redirected_to marketing_url(@marketing)
  end

  test "should destroy marketing" do
    assert_difference("Marketing.count", -1) do
      delete marketing_url(@marketing)
    end

    assert_redirected_to marketings_url
  end
end
