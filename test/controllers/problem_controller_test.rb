require 'test_helper'

class ProblemControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get problem_new_url
    assert_response :success
  end

end
