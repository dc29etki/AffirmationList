require 'test_helper'

class ViewAffirmationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get view_affirmations_index_url
    assert_response :success
  end

end
