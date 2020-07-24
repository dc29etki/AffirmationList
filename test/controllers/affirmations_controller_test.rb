require 'test_helper'

class AffirmationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get affirmations_index_url
    assert_response :success
  end

end
