require "application_system_test_case"

class ArticalsTest < ApplicationSystemTestCase
  setup do
    @artical = articals(:one)
  end

  test "visiting the index" do
    visit articals_url
    assert_selector "h1", text: "Articals"
  end

  test "creating a Artical" do
    visit articals_url
    click_on "New Artical"

    fill_in "Body", with: @artical.body
    fill_in "Title", with: @artical.title
    click_on "Create Artical"

    assert_text "Artical was successfully created"
    click_on "Back"
  end

  test "updating a Artical" do
    visit articals_url
    click_on "Edit", match: :first

    fill_in "Body", with: @artical.body
    fill_in "Title", with: @artical.title
    click_on "Update Artical"

    assert_text "Artical was successfully updated"
    click_on "Back"
  end

  test "destroying a Artical" do
    visit articals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Artical was successfully destroyed"
  end
end
