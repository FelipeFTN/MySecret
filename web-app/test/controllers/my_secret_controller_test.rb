require "test_helper"

class MySecretControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_secret_index_url
    assert_response :success
  end
end
