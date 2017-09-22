require 'test_helper'

class TestcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testcategory = testcategories(:one)
  end

  test "should get index" do
    get testcategories_url
    assert_response :success
  end

  test "should get new" do
    get new_testcategory_url
    assert_response :success
  end

  test "should create testcategory" do
    assert_difference('Testcategory.count') do
      post testcategories_url, params: { testcategory: { testname: @testcategory.testname } }
    end

    assert_redirected_to testcategory_url(Testcategory.last)
  end

  test "should show testcategory" do
    get testcategory_url(@testcategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_testcategory_url(@testcategory)
    assert_response :success
  end

  test "should update testcategory" do
    patch testcategory_url(@testcategory), params: { testcategory: { testname: @testcategory.testname } }
    assert_redirected_to testcategory_url(@testcategory)
  end

  test "should destroy testcategory" do
    assert_difference('Testcategory.count', -1) do
      delete testcategory_url(@testcategory)
    end

    assert_redirected_to testcategories_url
  end
end
