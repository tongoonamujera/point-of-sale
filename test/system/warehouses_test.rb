require "application_system_test_case"

class WarehousesTest < ApplicationSystemTestCase
  setup do
    @warehouse = warehouses(:one)
  end

  test "visiting the index" do
    visit warehouses_url
    assert_selector "h1", text: "Warehouses"
  end

  test "creating a Warehouse" do
    visit warehouses_url
    click_on "New Warehouse"

    fill_in "Barcode", with: @warehouse.barcode
    fill_in "Product", with: @warehouse.product
    fill_in "Quantity per box or carton", with: @warehouse.quantity_per_box_or_carton
    fill_in "Total cost", with: @warehouse.total_cost
    fill_in "Units", with: @warehouse.units
    fill_in "User", with: @warehouse.user_id
    click_on "Create Warehouse"

    assert_text "Warehouse was successfully created"
    click_on "Back"
  end

  test "updating a Warehouse" do
    visit warehouses_url
    click_on "Edit", match: :first

    fill_in "Barcode", with: @warehouse.barcode
    fill_in "Product", with: @warehouse.product
    fill_in "Quantity per box or carton", with: @warehouse.quantity_per_box_or_carton
    fill_in "Total cost", with: @warehouse.total_cost
    fill_in "Units", with: @warehouse.units
    fill_in "User", with: @warehouse.user_id
    click_on "Update Warehouse"

    assert_text "Warehouse was successfully updated"
    click_on "Back"
  end

  test "destroying a Warehouse" do
    visit warehouses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Warehouse was successfully destroyed"
  end
end
