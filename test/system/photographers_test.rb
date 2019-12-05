require "application_system_test_case"

class PhotographersTest < ApplicationSystemTestCase
  setup do
    @photographer = photographers(:one)
  end

  test "visiting the index" do
    visit photographers_url
    assert_selector "h1", text: "Photographers"
  end

  test "creating a Photographer" do
    visit photographers_url
    click_on "New Photographer"

    fill_in "Address", with: @photographer.address
    fill_in "Contact", with: @photographer.contact
    fill_in "Description", with: @photographer.description
    fill_in "Email", with: @photographer.email
    fill_in "Image", with: @photographer.image
    fill_in "Name", with: @photographer.name
    fill_in "Upload date", with: @photographer.upload_date
    fill_in "Video", with: @photographer.video
    click_on "Create Photographer"

    assert_text "Photographer was successfully created"
    click_on "Back"
  end

  test "updating a Photographer" do
    visit photographers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @photographer.address
    fill_in "Contact", with: @photographer.contact
    fill_in "Description", with: @photographer.description
    fill_in "Email", with: @photographer.email
    fill_in "Image", with: @photographer.image
    fill_in "Name", with: @photographer.name
    fill_in "Upload date", with: @photographer.upload_date
    fill_in "Video", with: @photographer.video
    click_on "Update Photographer"

    assert_text "Photographer was successfully updated"
    click_on "Back"
  end

  test "destroying a Photographer" do
    visit photographers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Photographer was successfully destroyed"
  end
end
