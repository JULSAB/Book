require "application_system_test_case"

class AdrListsTest < ApplicationSystemTestCase
  setup do
    @adr_list = adr_lists(:one)
  end

  test "visiting the index" do
    visit adr_lists_url
    assert_selector "h1", text: "Adr Lists"
  end

  test "creating a Adr list" do
    visit adr_lists_url
    click_on "New Adr List"

    fill_in "Address", with: @adr_list.Address
    fill_in "Lastname", with: @adr_list.LastName
    fill_in "Name", with: @adr_list.Name
    fill_in "Phone", with: @adr_list.Phone
    fill_in "Email", with: @adr_list.email
    click_on "Create Adr list"

    assert_text "Adr list was successfully created"
    click_on "Back"
  end

  test "updating a Adr list" do
    visit adr_lists_url
    click_on "Edit", match: :first

    fill_in "Address", with: @adr_list.Address
    fill_in "Lastname", with: @adr_list.LastName
    fill_in "Name", with: @adr_list.Name
    fill_in "Phone", with: @adr_list.Phone
    fill_in "Email", with: @adr_list.email
    click_on "Update Adr list"

    assert_text "Adr list was successfully updated"
    click_on "Back"
  end

  test "destroying a Adr list" do
    visit adr_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adr list was successfully destroyed"
  end
end
