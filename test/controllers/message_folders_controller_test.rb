require 'test_helper'

class MessageFoldersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message_folder = message_folders(:one)
  end

  test "should get index" do
    get message_folders_url
    assert_response :success
  end

  test "should get new" do
    get new_message_folder_url
    assert_response :success
  end

  test "should create message_folder" do
    assert_difference('MessageFolder.count') do
      post message_folders_url, params: { message_folder: { name: @message_folder.name, system: @message_folder.system } }
    end

    assert_redirected_to message_folder_url(MessageFolder.last)
  end

  test "should show message_folder" do
    get message_folder_url(@message_folder)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_folder_url(@message_folder)
    assert_response :success
  end

  test "should update message_folder" do
    patch message_folder_url(@message_folder), params: { message_folder: { name: @message_folder.name, system: @message_folder.system } }
    assert_redirected_to message_folder_url(@message_folder)
  end

  test "should destroy message_folder" do
    assert_difference('MessageFolder.count', -1) do
      delete message_folder_url(@message_folder)
    end

    assert_redirected_to message_folders_url
  end
end
