require "test_helper"

class AdrListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adr_list = adr_lists(:one)
  end

  test "should get index" do
    get adr_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_adr_list_url
    assert_response :success
  end

  test "should create adr_list" do
    assert_difference('AdrList.count') do
      post adr_lists_url, params: { adr_list: { Address: @adr_list.Address, LastName: @adr_list.LastName, Name: @adr_list.Name, Phone: @adr_list.Phone, email: @adr_list.email } }
    end

    assert_redirected_to adr_list_url(AdrList.last)
  end

  test "should show adr_list" do
    get adr_list_url(@adr_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_adr_list_url(@adr_list)
    assert_response :success
  end

  test "should update adr_list" do
    patch adr_list_url(@adr_list), params: { adr_list: { Address: @adr_list.Address, LastName: @adr_list.LastName, Name: @adr_list.Name, Phone: @adr_list.Phone, email: @adr_list.email } }
    assert_redirected_to adr_list_url(@adr_list)
  end

  test "should destroy adr_list" do
    assert_difference('AdrList.count', -1) do
      delete adr_list_url(@adr_list)
    end

    assert_redirected_to adr_lists_url
  end
end
