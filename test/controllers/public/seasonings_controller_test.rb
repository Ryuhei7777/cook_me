require "test_helper"

class Public::SeasoningsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_seasonings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_seasonings_destroy_url
    assert_response :success
  end

  test "should get update_all" do
    get public_seasonings_update_all_url
    assert_response :success
  end
end
