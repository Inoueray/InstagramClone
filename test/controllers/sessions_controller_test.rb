require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get mew" do
    get sessions_mew_url
    assert_response :success
  end

end
