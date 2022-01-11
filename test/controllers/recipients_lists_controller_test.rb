require 'test_helper'

class RecipientsListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipients_list = recipients_lists(:one)
  end

  test "should get index" do
    get recipients_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_recipients_list_url
    assert_response :success
  end

  test "should create recipients_list" do
    assert_difference('RecipientsList.count') do
      post recipients_lists_url, params: { recipients_list: { name: @recipients_list.name, user_id: @recipients_list.user_id } }
    end

    assert_redirected_to recipients_list_url(RecipientsList.last)
  end

  test "should show recipients_list" do
    get recipients_list_url(@recipients_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipients_list_url(@recipients_list)
    assert_response :success
  end

  test "should update recipients_list" do
    patch recipients_list_url(@recipients_list), params: { recipients_list: { name: @recipients_list.name, user_id: @recipients_list.user_id } }
    assert_redirected_to recipients_list_url(@recipients_list)
  end

  test "should destroy recipients_list" do
    assert_difference('RecipientsList.count', -1) do
      delete recipients_list_url(@recipients_list)
    end

    assert_redirected_to recipients_lists_url
  end
end
