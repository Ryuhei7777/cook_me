require "test_helper"

class Public::MaterialsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get public_materials_create_url
    assert_response :success
  end

  test "should get destroy" do
    get public_materials_destroy_url
    assert_response :success
  end

  test "should get update_all" do
    get public_materials_update_all_url
    assert_response :success
  end
end
