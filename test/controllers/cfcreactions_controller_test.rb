require "test_helper"

class CfcreactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cfcreaction = cfcreactions(:one)
  end

  test "should get index" do
    get cfcreactions_url
    assert_response :success
  end

  test "should get new" do
    get new_cfcreaction_url
    assert_response :success
  end

  test "should create cfcreaction" do
    assert_difference("Cfcreaction.count") do
      post cfcreactions_url, params: { cfcreaction: { cfccomments_id: @cfcreaction.cfccomments_id, cfcpost_id: @cfcreaction.cfcpost_id, cfcuser_id: @cfcreaction.cfcuser_id, kind: @cfcreaction.kind, reaction_type: @cfcreaction.reaction_type } }
    end

    assert_redirected_to cfcreaction_url(Cfcreaction.last)
  end

  test "should show cfcreaction" do
    get cfcreaction_url(@cfcreaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_cfcreaction_url(@cfcreaction)
    assert_response :success
  end

  test "should update cfcreaction" do
    patch cfcreaction_url(@cfcreaction), params: { cfcreaction: { cfccomments_id: @cfcreaction.cfccomments_id, cfcpost_id: @cfcreaction.cfcpost_id, cfcuser_id: @cfcreaction.cfcuser_id, kind: @cfcreaction.kind, reaction_type: @cfcreaction.reaction_type } }
    assert_redirected_to cfcreaction_url(@cfcreaction)
  end

  test "should destroy cfcreaction" do
    assert_difference("Cfcreaction.count", -1) do
      delete cfcreaction_url(@cfcreaction)
    end

    assert_redirected_to cfcreactions_url
  end
end
