require "test_helper"

class SponsorLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sponsor_level = sponsor_levels(:one)
  end

  test "should get index" do
    get sponsor_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_sponsor_level_url
    assert_response :success
  end

  test "should create sponsor_level" do
    assert_difference("SponsorLevel.count") do
      post sponsor_levels_url, params: { sponsor_level: { Description: @sponsor_level.Description, Level_ID: @sponsor_level.Level_ID, Level_Name: @sponsor_level.Level_Name, Value: @sponsor_level.Value } }
    end

    assert_redirected_to sponsor_level_url(SponsorLevel.last)
  end

  test "should show sponsor_level" do
    get sponsor_level_url(@sponsor_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_sponsor_level_url(@sponsor_level)
    assert_response :success
  end

  test "should update sponsor_level" do
    patch sponsor_level_url(@sponsor_level), params: { sponsor_level: { Description: @sponsor_level.Description, Level_ID: @sponsor_level.Level_ID, Level_Name: @sponsor_level.Level_Name, Value: @sponsor_level.Value } }
    assert_redirected_to sponsor_level_url(@sponsor_level)
  end

  test "should destroy sponsor_level" do
    assert_difference("SponsorLevel.count", -1) do
      delete sponsor_level_url(@sponsor_level)
    end

    assert_redirected_to sponsor_levels_url
  end
end
