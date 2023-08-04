require "application_system_test_case"

class CfcreactionsTest < ApplicationSystemTestCase
  setup do
    @cfcreaction = cfcreactions(:one)
  end

  test "visiting the index" do
    visit cfcreactions_url
    assert_selector "h1", text: "Cfcreactions"
  end

  test "should create cfcreaction" do
    visit cfcreactions_url
    click_on "New cfcreaction"

    fill_in "Cfccomments", with: @cfcreaction.cfccomments_id
    fill_in "Cfcpost", with: @cfcreaction.cfcpost_id
    fill_in "Cfcuser", with: @cfcreaction.cfcuser_id
    fill_in "Kind", with: @cfcreaction.kind
    fill_in "Reaction type", with: @cfcreaction.reaction_type
    click_on "Create Cfcreaction"

    assert_text "Cfcreaction was successfully created"
    click_on "Back"
  end

  test "should update Cfcreaction" do
    visit cfcreaction_url(@cfcreaction)
    click_on "Edit this cfcreaction", match: :first

    fill_in "Cfccomments", with: @cfcreaction.cfccomments_id
    fill_in "Cfcpost", with: @cfcreaction.cfcpost_id
    fill_in "Cfcuser", with: @cfcreaction.cfcuser_id
    fill_in "Kind", with: @cfcreaction.kind
    fill_in "Reaction type", with: @cfcreaction.reaction_type
    click_on "Update Cfcreaction"

    assert_text "Cfcreaction was successfully updated"
    click_on "Back"
  end

  test "should destroy Cfcreaction" do
    visit cfcreaction_url(@cfcreaction)
    click_on "Destroy this cfcreaction", match: :first

    assert_text "Cfcreaction was successfully destroyed"
  end
end
