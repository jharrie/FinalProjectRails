require "application_system_test_case"

class StaffsTest < ApplicationSystemTestCase
  setup do
    @staff = staffs(:one)
  end

  test "visiting the index" do
    visit staffs_url
    assert_selector "h1", text: "Staffs"
  end

  test "creating a Staff" do
    visit staffs_url
    click_on "New Staff"

    fill_in "Address", with: @staff.address
    fill_in "Apptdate", with: @staff.apptdate
    fill_in "City", with: @staff.city
    fill_in "Customer", with: @staff.customer_id
    fill_in "Fname", with: @staff.fname
    fill_in "Lname", with: @staff.lname
    fill_in "Phone", with: @staff.phone
    fill_in "Postal", with: @staff.postal
    fill_in "Rate", with: @staff.rate
    fill_in "Service", with: @staff.service_id
    fill_in "Title", with: @staff.title
    click_on "Create Staff"

    assert_text "Staff was successfully created"
    click_on "Back"
  end

  test "updating a Staff" do
    visit staffs_url
    click_on "Edit", match: :first

    fill_in "Address", with: @staff.address
    fill_in "Apptdate", with: @staff.apptdate
    fill_in "City", with: @staff.city
    fill_in "Customer", with: @staff.customer_id
    fill_in "Fname", with: @staff.fname
    fill_in "Lname", with: @staff.lname
    fill_in "Phone", with: @staff.phone
    fill_in "Postal", with: @staff.postal
    fill_in "Rate", with: @staff.rate
    fill_in "Service", with: @staff.service_id
    fill_in "Title", with: @staff.title
    click_on "Update Staff"

    assert_text "Staff was successfully updated"
    click_on "Back"
  end

  test "destroying a Staff" do
    visit staffs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Staff was successfully destroyed"
  end
end
