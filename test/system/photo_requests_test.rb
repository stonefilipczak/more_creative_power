require "application_system_test_case"

class PhotoRequestsTest < ApplicationSystemTestCase
  setup do
    @photo_request = photo_requests(:one)
  end

  test "visiting the index" do
    visit photo_requests_url
    assert_selector "h1", text: "Photo Requests"
  end

  test "creating a Photo request" do
    visit photo_requests_url
    click_on "New Photo Request"

    fill_in "Contact", with: @photo_request.contact
    fill_in "Reply", with: @photo_request.reply
    fill_in "Schedule", with: @photo_request.schedule
    fill_in "Status", with: @photo_request.status
    fill_in "User", with: @photo_request.user_id
    click_on "Create Photo request"

    assert_text "Photo request was successfully created"
    click_on "Back"
  end

  test "updating a Photo request" do
    visit photo_requests_url
    click_on "Edit", match: :first

    fill_in "Contact", with: @photo_request.contact
    fill_in "Reply", with: @photo_request.reply
    fill_in "Schedule", with: @photo_request.schedule
    fill_in "Status", with: @photo_request.status
    fill_in "User", with: @photo_request.user_id
    click_on "Update Photo request"

    assert_text "Photo request was successfully updated"
    click_on "Back"
  end

  test "destroying a Photo request" do
    visit photo_requests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photo request was successfully destroyed"
  end
end
