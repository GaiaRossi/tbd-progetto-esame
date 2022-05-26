require "application_system_test_case"

class ProductLocationsTest < ApplicationSystemTestCase
  setup do
    @product_location = product_locations(:one)
  end

  test "visiting the index" do
    visit product_locations_url
    assert_selector "h1", text: "Product locations"
  end

  test "should create product location" do
    visit product_locations_url
    click_on "New product location"

    fill_in "Product", with: @product_location.product_id
    fill_in "Quanity", with: @product_location.quanity
    fill_in "Warehouse", with: @product_location.warehouse_id
    click_on "Create Product location"

    assert_text "Product location was successfully created"
    click_on "Back"
  end

  test "should update Product location" do
    visit product_location_url(@product_location)
    click_on "Edit this product location", match: :first

    fill_in "Product", with: @product_location.product_id
    fill_in "Quanity", with: @product_location.quanity
    fill_in "Warehouse", with: @product_location.warehouse_id
    click_on "Update Product location"

    assert_text "Product location was successfully updated"
    click_on "Back"
  end

  test "should destroy Product location" do
    visit product_location_url(@product_location)
    click_on "Destroy this product location", match: :first

    assert_text "Product location was successfully destroyed"
  end
end
