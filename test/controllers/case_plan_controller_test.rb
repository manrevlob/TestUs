require 'test_helper'

class CasePlanControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get case_plan_index_url
    assert_response :success
  end

end
