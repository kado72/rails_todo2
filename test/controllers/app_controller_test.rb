require 'test_helper'

class AppControllerTest < ActionDispatch::IntegrationTest
  test "should get stopwatch" do
    get app_stopwatch_url
    assert_response :success
  end

  test "should get todo" do
    get app_todo_url
    assert_response :success
  end

end
