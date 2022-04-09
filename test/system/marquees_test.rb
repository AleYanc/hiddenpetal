require "application_system_test_case"

class MarqueesTest < ApplicationSystemTestCase
  setup do
    @marquee = marquees(:one)
  end

  test "visiting the index" do
    visit marquees_url
    assert_selector "h1", text: "Marquees"
  end

  test "creating a Marquee" do
    visit marquees_url
    click_on "New Marquee"

    fill_in "Title", with: @marquee.title
    click_on "Create Marquee"

    assert_text "Marquee was successfully created"
    click_on "Back"
  end

  test "updating a Marquee" do
    visit marquees_url
    click_on "Edit", match: :first

    fill_in "Title", with: @marquee.title
    click_on "Update Marquee"

    assert_text "Marquee was successfully updated"
    click_on "Back"
  end

  test "destroying a Marquee" do
    visit marquees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marquee was successfully destroyed"
  end
end
