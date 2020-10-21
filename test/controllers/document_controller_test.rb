require 'test_helper'

class DocumentControllerTest < ActionDispatch::IntegrationTest
  test "should get privacypolicy" do
    get document_privacypolicy_url
    assert_response :success
  end

  test "should get termsofservice" do
    get document_termsofservice_url
    assert_response :success
  end

end
