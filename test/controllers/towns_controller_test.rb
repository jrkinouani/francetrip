require "test_helper"

class TownsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get towns_new_url
    assert_response :success
  end

  test "should get index" do
    get towns_index_url
    assert_response :success
  end

  test "should get _form" do
    get towns__form_url
    assert_response :success
  end

  test "should get show" do
    get towns_show_url
    assert_response :success
  end

  test "should get edit" do
    get towns_edit_url
    assert_response :success
  end
end
