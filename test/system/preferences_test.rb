require "application_system_test_case"

class PreferencesTest < ApplicationSystemTestCase
  setup do
    @preference = preferences(:one)
  end

  test "visiting the index" do
    visit preferences_url
    assert_selector "h1", text: "Preferences"
  end

  test "creating a Preference" do
    visit preferences_url
    click_on "New Preference"

    fill_in "Cheese", with: @preference.cheese_id
    fill_in "Cheeses", with: @preference.cheeses
    fill_in "No Cheeses", with: @preference.no_cheeses
    fill_in "Tasty", with: @preference.tasty
    fill_in "User", with: @preference.user
    fill_in "User", with: @preference.user_id
    click_on "Create Preference"

    assert_text "Preference was successfully created"
    click_on "Back"
  end

  test "updating a Preference" do
    visit preferences_url
    click_on "Edit", match: :first

    fill_in "Cheese", with: @preference.cheese_id
    fill_in "Cheeses", with: @preference.cheeses
    fill_in "No Cheeses", with: @preference.no_cheeses
    fill_in "Tasty", with: @preference.tasty
    fill_in "User", with: @preference.user
    fill_in "User", with: @preference.user_id
    click_on "Update Preference"

    assert_text "Preference was successfully updated"
    click_on "Back"
  end

  test "destroying a Preference" do
    visit preferences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Preference was successfully destroyed"
  end
end