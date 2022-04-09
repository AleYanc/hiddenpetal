require "application_system_test_case"

class HomeBannersTest < ApplicationSystemTestCase
  setup do
    @home_banner = home_banners(:one)
  end

  test "visiting the index" do
    visit home_banners_url
    assert_selector "h1", text: "Home Banners"
  end

  test "creating a Home banner" do
    visit home_banners_url
    click_on "New Home Banner"

    fill_in "Images", with: @home_banner.images
    click_on "Create Home banner"

    assert_text "Home banner was successfully created"
    click_on "Back"
  end

  test "updating a Home banner" do
    visit home_banners_url
    click_on "Edit", match: :first

    fill_in "Images", with: @home_banner.images
    click_on "Update Home banner"

    assert_text "Home banner was successfully updated"
    click_on "Back"
  end

  test "destroying a Home banner" do
    visit home_banners_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home banner was successfully destroyed"
  end
end
