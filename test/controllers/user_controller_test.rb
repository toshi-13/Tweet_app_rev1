require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get user_add" do
    get user_user_add_url
    assert_response :success
  end

end
