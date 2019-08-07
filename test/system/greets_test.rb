require "application_system_test_case"

class GreetsTest < ApplicationSystemTestCase
  setup do
    @greet = greets(:one)
  end

  test "visiting the index" do
    visit greets_url
    assert_selector "h1", text: "Greets"
  end

  test "creating a Greet" do
    visit greets_url
    click_on "New Greet"

    fill_in "Content", with: @greet.content
    click_on "Create Greet"

    assert_text "Greet was successfully created"
    click_on "Back"
  end

  test "updating a Greet" do
    visit greets_url
    click_on "Edit", match: :first

    fill_in "Content", with: @greet.content
    click_on "Update Greet"

    assert_text "Greet was successfully updated"
    click_on "Back"
  end

  test "destroying a Greet" do
    visit greets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Greet was successfully destroyed"
  end
end
