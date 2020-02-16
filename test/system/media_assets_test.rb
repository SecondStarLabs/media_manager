require "application_system_test_case"

class MediaAssetsTest < ApplicationSystemTestCase
  setup do
    @media_asset = media_assets(:one)
  end

  test "visiting the index" do
    visit media_assets_url
    assert_selector "h1", text: "Media Assets"
  end

  test "creating a Media asset" do
    visit media_assets_url
    click_on "New Media Asset"

    fill_in "Description", with: @media_asset.description
    fill_in "Title", with: @media_asset.title
    click_on "Create Media asset"

    assert_text "Media asset was successfully created"
    click_on "Back"
  end

  test "updating a Media asset" do
    visit media_assets_url
    click_on "Edit", match: :first

    fill_in "Description", with: @media_asset.description
    fill_in "Title", with: @media_asset.title
    click_on "Update Media asset"

    assert_text "Media asset was successfully updated"
    click_on "Back"
  end

  test "destroying a Media asset" do
    visit media_assets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Media asset was successfully destroyed"
  end
end
