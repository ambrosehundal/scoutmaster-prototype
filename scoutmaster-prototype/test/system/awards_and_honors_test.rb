require "application_system_test_case"

class AwardsAndHonorsTest < ApplicationSystemTestCase
  setup do
    @awards_and_honor = awards_and_honors(:one)
  end

  test "visiting the index" do
    visit awards_and_honors_url
    assert_selector "h1", text: "Awards And Honors"
  end

  test "creating a Awards and honor" do
    visit awards_and_honors_url
    click_on "New Awards And Honor"

    fill_in "Award name", with: @awards_and_honor.award_name
    fill_in "Description", with: @awards_and_honor.description
    fill_in "Organization", with: @awards_and_honor.organization
    fill_in "Year", with: @awards_and_honor.year
    click_on "Create Awards and honor"

    assert_text "Awards and honor was successfully created"
    click_on "Back"
  end

  test "updating a Awards and honor" do
    visit awards_and_honors_url
    click_on "Edit", match: :first

    fill_in "Award name", with: @awards_and_honor.award_name
    fill_in "Description", with: @awards_and_honor.description
    fill_in "Organization", with: @awards_and_honor.organization
    fill_in "Year", with: @awards_and_honor.year
    click_on "Update Awards and honor"

    assert_text "Awards and honor was successfully updated"
    click_on "Back"
  end

  test "destroying a Awards and honor" do
    visit awards_and_honors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Awards and honor was successfully destroyed"
  end
end
