require "application_system_test_case"

class SaibamonsTest < ApplicationSystemTestCase
  setup do
    @saibamon = saibamons(:one)
  end

  test "visiting the index" do
    visit saibamons_url
    assert_selector "h1", text: "Saibamons"
  end

  test "creating a Saibamon" do
    visit saibamons_url
    click_on "New Saibamon"

    fill_in "Birthday", with: @saibamon.birthday
    fill_in "Gender", with: @saibamon.gender
    fill_in "Name", with: @saibamon.name
    fill_in "Owner", with: @saibamon.owner
    fill_in "Species", with: @saibamon.species
    click_on "Create Saibamon"

    assert_text "Saibamon was successfully created"
    click_on "Back"
  end

  test "updating a Saibamon" do
    visit saibamons_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @saibamon.birthday
    fill_in "Gender", with: @saibamon.gender
    fill_in "Name", with: @saibamon.name
    fill_in "Owner", with: @saibamon.owner
    fill_in "Species", with: @saibamon.species
    click_on "Update Saibamon"

    assert_text "Saibamon was successfully updated"
    click_on "Back"
  end

  test "destroying a Saibamon" do
    visit saibamons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Saibamon was successfully destroyed"
  end
end
