require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get fct1" do
    get login_fct1_url
    assert_response :success
  end

end
