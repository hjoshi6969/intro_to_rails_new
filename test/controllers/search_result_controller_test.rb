require "test_helper"

class SearchResultControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get search_result_index_url
    assert_response :success
  end
end
