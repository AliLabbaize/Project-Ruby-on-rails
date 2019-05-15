require 'test_helper'

class SynonymsControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get synonyms_start_url
    assert_response :success
  end

end
