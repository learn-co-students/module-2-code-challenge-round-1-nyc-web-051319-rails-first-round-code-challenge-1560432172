require 'test_helper'

class HeroinesControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get heroines_controller_new_url
    assert_response :success
  end

  test "should get edit" do
    get heroines_controller_edit_url
    assert_response :success
  end

  test "should get show" do
    get heroines_controller_show_url
    assert_response :success
  end

end
