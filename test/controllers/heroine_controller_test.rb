require 'test_helper'

class HeroineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get heroine_index_url
    assert_response :success
  end

  test "should get show" do
    get heroine_show_url
    assert_response :success
  end

  test "should get new" do
    get heroine_new_url
    assert_response :success
  end

  test "should get edit" do
    get heroine_edit_url
    assert_response :success
  end

end
