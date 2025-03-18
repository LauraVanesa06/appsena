require "test_helper"

class PersonasControllerTest < ActionDispatch::IntegrationTest
  test "should get gmail" do
    get personas_gmail_url
    assert_response :success
  end
end
