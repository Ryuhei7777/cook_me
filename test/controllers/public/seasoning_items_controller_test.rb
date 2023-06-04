require "test_helper"

class Public::SeasoningItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_seasoning_items_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_seasoning_items_destroy_url
    assert_response :success
  end

  test "should get update_all" do
    get public_seasoning_items_update_all_url
    assert_response :success
  end
end
