require "application_system_test_case"

class FrasesTest < ApplicationSystemTestCase
  setup do
    @frase = frases(:one)
  end

  test "visiting the index" do
    visit frases_url
    assert_selector "h1", text: "Frases"
  end

  test "creating a Frase" do
    visit frases_url
    click_on "New Frase"

    fill_in "Frase", with: @frase.frase
    click_on "Create Frase"

    assert_text "Frase was successfully created"
    click_on "Back"
  end

  test "updating a Frase" do
    visit frases_url
    click_on "Edit", match: :first

    fill_in "Frase", with: @frase.frase
    click_on "Update Frase"

    assert_text "Frase was successfully updated"
    click_on "Back"
  end

  test "destroying a Frase" do
    visit frases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frase was successfully destroyed"
  end
end
