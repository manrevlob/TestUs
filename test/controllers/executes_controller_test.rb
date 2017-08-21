require 'test_helper'

class ExecutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @execute = executes(:one)
  end

  test "should get index" do
    get executes_url
    assert_response :success
  end

  test "should get new" do
    get new_execute_url
    assert_response :success
  end

  test "should create execute" do
    assert_difference('Execute.count') do
      post executes_url, params: { execute: { date: @execute.date, duration: @execute.duration, result: @execute.result, status: @execute.status, summary: @execute.summary } }
    end

    assert_redirected_to execute_url(Execute.last)
  end

  test "should show execute" do
    get execute_url(@execute)
    assert_response :success
  end

  test "should get edit" do
    get edit_execute_url(@execute)
    assert_response :success
  end

  test "should update execute" do
    patch execute_url(@execute), params: { execute: { date: @execute.date, duration: @execute.duration, result: @execute.result, status: @execute.status, summary: @execute.summary } }
    assert_redirected_to execute_url(@execute)
  end

  test "should destroy execute" do
    assert_difference('Execute.count', -1) do
      delete execute_url(@execute)
    end

    assert_redirected_to executes_url
  end
end
