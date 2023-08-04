require "application_system_test_case"

class CfccommentsTest < ApplicationSystemTestCase
  setup do
    @cfccomment = cfccomments(:one)
  end

  test "visiting the index" do
    visit cfccomments_url
    assert_selector "h1", text: "Cfccomments"
  end

  test "should create cfccomment" do
    visit cfccomments_url
    click_on "New cfccomment"

    fill_in "Cfcpost", with: @cfccomment.cfcpost_id
    fill_in "Cfcuser", with: @cfccomment.cfcuser_id
    fill_in "Content", with: @cfccomment.content
    click_on "Create Cfccomment"

    assert_text "Cfccomment was successfully created"
    click_on "Back"
  end

  test "should update Cfccomment" do
    visit cfccomment_url(@cfccomment)
    click_on "Edit this cfccomment", match: :first

    fill_in "Cfcpost", with: @cfccomment.cfcpost_id
    fill_in "Cfcuser", with: @cfccomment.cfcuser_id
    fill_in "Content", with: @cfccomment.content
    click_on "Update Cfccomment"

    assert_text "Cfccomment was successfully updated"
    click_on "Back"
  end

  test "should destroy Cfccomment" do
    visit cfccomment_url(@cfccomment)
    click_on "Destroy this cfccomment", match: :first

    assert_text "Cfccomment was successfully destroyed"
  end
end
