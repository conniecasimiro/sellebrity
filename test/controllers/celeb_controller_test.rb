require "test_helper"

class CelebControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get celeb_index_url
    assert_response :success
  end

  test "should get new" do
    get celeb_new_url
    assert_response :success
  end

  test "should get create" do
    get celeb_create_url
    assert_response :success
  end
end
