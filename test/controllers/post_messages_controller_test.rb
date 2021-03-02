require 'test_helper'

class PostMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get post_messages_index_url
    assert_response :success
  end

  test "should get new" do
    get post_messages_new_url
    assert_response :success
  end

  test "should get edit" do
    get post_messages_edit_url
    assert_response :success
  end

  test "should get confirm" do
    get post_messages_confirm_url
    assert_response :success
  end

end
