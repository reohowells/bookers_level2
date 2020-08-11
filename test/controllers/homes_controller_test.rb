require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get anout" do
    get homes_anout_url
    assert_response :success
  end

  test "should get top" do
    get homes_top_url
    assert_response :success
  end

end
