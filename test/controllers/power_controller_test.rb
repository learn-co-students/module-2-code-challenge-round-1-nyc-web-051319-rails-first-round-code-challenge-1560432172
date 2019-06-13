require 'test_helper'

class PowerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get power_index_url
    assert_response :success
  end

  test "should get show" do
    get power_show_url
    assert_response :success
  end

end
