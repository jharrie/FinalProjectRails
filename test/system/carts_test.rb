require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase
  setup do
    @cart = carts(:one)
  end

  test "visiting the index" do
    visit carts_url
    assert_selector "h1", text: "Carts"
  end

  test "creating a Cart" do
    visit carts_url
    click_on "New Cart"

    fill_in "Balance", with: @cart.balance
    fill_in "Customer", with: @cart.customer_id
    fill_in "Gst", with: @cart.gst
    fill_in "Hst", with: @cart.hst
    fill_in "Itemtotal", with: @cart.itemtotal
    fill_in "Product", with: @cart.product_id
    fill_in "Pst", with: @cart.pst
    fill_in "Service", with: @cart.service_id
    fill_in "Total", with: @cart.total
    click_on "Create Cart"

    assert_text "Cart was successfully created"
    click_on "Back"
  end

  test "updating a Cart" do
    visit carts_url
    click_on "Edit", match: :first

    fill_in "Balance", with: @cart.balance
    fill_in "Customer", with: @cart.customer_id
    fill_in "Gst", with: @cart.gst
    fill_in "Hst", with: @cart.hst
    fill_in "Itemtotal", with: @cart.itemtotal
    fill_in "Product", with: @cart.product_id
    fill_in "Pst", with: @cart.pst
    fill_in "Service", with: @cart.service_id
    fill_in "Total", with: @cart.total
    click_on "Update Cart"

    assert_text "Cart was successfully updated"
    click_on "Back"
  end

  test "destroying a Cart" do
    visit carts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cart was successfully destroyed"
  end
end
