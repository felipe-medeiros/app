require "application_system_test_case"

class VouchersTest < ApplicationSystemTestCase
  setup do
    @voucher = vouchers(:one)
  end

  test "visiting the index" do
    visit vouchers_url
    assert_selector "h1", text: "Vouchers"
  end

  test "creating a Voucher" do
    visit vouchers_url
    click_on "New Voucher"

    fill_in "Business", with: @voucher.business_id
    fill_in "Code", with: @voucher.code
    fill_in "Discount", with: @voucher.discount
    click_on "Create Voucher"

    assert_text "Voucher was successfully created"
    click_on "Back"
  end

  test "updating a Voucher" do
    visit vouchers_url
    click_on "Edit", match: :first

    fill_in "Business", with: @voucher.business_id
    fill_in "Code", with: @voucher.code
    fill_in "Discount", with: @voucher.discount
    click_on "Update Voucher"

    assert_text "Voucher was successfully updated"
    click_on "Back"
  end

  test "destroying a Voucher" do
    visit vouchers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Voucher was successfully destroyed"
  end
end
