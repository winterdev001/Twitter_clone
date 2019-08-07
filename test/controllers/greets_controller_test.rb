require 'test_helper'

class GreetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @greet = greets(:one)
  end

  test "should get index" do
    get greets_url
    assert_response :success
  end

  test "should get new" do
    get new_greet_url
    assert_response :success
  end

  test "should create greet" do
    assert_difference('Greet.count') do
      post greets_url, params: { greet: { content: @greet.content } }
    end

    assert_redirected_to greet_url(Greet.last)
  end

  test "should show greet" do
    get greet_url(@greet)
    assert_response :success
  end

  test "should get edit" do
    get edit_greet_url(@greet)
    assert_response :success
  end

  test "should update greet" do
    patch greet_url(@greet), params: { greet: { content: @greet.content } }
    assert_redirected_to greet_url(@greet)
  end

  test "should destroy greet" do
    assert_difference('Greet.count', -1) do
      delete greet_url(@greet)
    end

    assert_redirected_to greets_url
  end
end
