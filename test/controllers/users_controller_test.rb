require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get stopwatch" do
    get users_stopwatch_url
    assert_response :success
  end

  test "should get todo" do
    get users_todo_url
    assert_response :success
  end

end
