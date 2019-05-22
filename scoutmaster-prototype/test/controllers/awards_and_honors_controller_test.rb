require 'test_helper'

class AwardsAndHonorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @awards_and_honor = awards_and_honors(:one)
  end

  test "should get index" do
    get awards_and_honors_url
    assert_response :success
  end

  test "should get new" do
    get new_awards_and_honor_url
    assert_response :success
  end

  test "should create awards_and_honor" do
    assert_difference('AwardsAndHonor.count') do
      post awards_and_honors_url, params: { awards_and_honor: { award_name: @awards_and_honor.award_name, description: @awards_and_honor.description, organization: @awards_and_honor.organization, year: @awards_and_honor.year } }
    end

    assert_redirected_to awards_and_honor_url(AwardsAndHonor.last)
  end

  test "should show awards_and_honor" do
    get awards_and_honor_url(@awards_and_honor)
    assert_response :success
  end

  test "should get edit" do
    get edit_awards_and_honor_url(@awards_and_honor)
    assert_response :success
  end

  test "should update awards_and_honor" do
    patch awards_and_honor_url(@awards_and_honor), params: { awards_and_honor: { award_name: @awards_and_honor.award_name, description: @awards_and_honor.description, organization: @awards_and_honor.organization, year: @awards_and_honor.year } }
    assert_redirected_to awards_and_honor_url(@awards_and_honor)
  end

  test "should destroy awards_and_honor" do
    assert_difference('AwardsAndHonor.count', -1) do
      delete awards_and_honor_url(@awards_and_honor)
    end

    assert_redirected_to awards_and_honors_url
  end
end
