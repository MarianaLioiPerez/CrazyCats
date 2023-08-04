require "test_helper"

class CfccommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cfccomment = cfccomments(:one)
  end

  test "should get index" do
    get cfccomments_url
    assert_response :success
  end

  test "should get new" do
    get new_cfccomment_url
    assert_response :success
  end

  test "should create cfccomment" do
    assert_difference("Cfccomment.count") do
      post cfccomments_url, params: { cfccomment: { cfcpost_id: @cfccomment.cfcpost_id, cfcuser_id: @cfccomment.cfcuser_id, content: @cfccomment.content } }
    end

    assert_redirected_to cfccomment_url(Cfccomment.last)
  end

  test "should show cfccomment" do
    get cfccomment_url(@cfccomment)
    assert_response :success
  end

  test "should get edit" do
    get edit_cfccomment_url(@cfccomment)
    assert_response :success
  end

  test "should update cfccomment" do
    patch cfccomment_url(@cfccomment), params: { cfccomment: { cfcpost_id: @cfccomment.cfcpost_id, cfcuser_id: @cfccomment.cfcuser_id, content: @cfccomment.content } }
    assert_redirected_to cfccomment_url(@cfccomment)
  end

  test "should destroy cfccomment" do
    assert_difference("Cfccomment.count", -1) do
      delete cfccomment_url(@cfccomment)
    end

    assert_redirected_to cfccomments_url
  end
end
