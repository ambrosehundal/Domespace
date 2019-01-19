require "application_system_test_case"

class FacilitiesTest < ApplicationSystemTestCase
  setup do
    @facility = facilities(:one)
  end

  test "visiting the index" do
    visit facilities_url
    assert_selector "h1", text: "Facilities"
  end

  test "creating a Facility" do
    visit facilities_url
    click_on "New Facility"

    fill_in "Capacity", with: @facility.capacity
    fill_in "Comments", with: @facility.comments
    fill_in "Description", with: @facility.description
    fill_in "Environment", with: @facility.environment
    fill_in "Location", with: @facility.location
    fill_in "Reviews", with: @facility.reviews
    fill_in "Title", with: @facility.title
    click_on "Create Facility"

    assert_text "Facility was successfully created"
    click_on "Back"
  end

  test "updating a Facility" do
    visit facilities_url
    click_on "Edit", match: :first

    fill_in "Capacity", with: @facility.capacity
    fill_in "Comments", with: @facility.comments
    fill_in "Description", with: @facility.description
    fill_in "Environment", with: @facility.environment
    fill_in "Location", with: @facility.location
    fill_in "Reviews", with: @facility.reviews
    fill_in "Title", with: @facility.title
    click_on "Update Facility"

    assert_text "Facility was successfully updated"
    click_on "Back"
  end

  test "destroying a Facility" do
    visit facilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Facility was successfully destroyed"
  end
end
