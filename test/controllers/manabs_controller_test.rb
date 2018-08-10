require 'test_helper'

class ManabsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manab = manabs(:one)
  end

  test "should get index" do
    get manabs_url
    assert_response :success
  end

  test "should get new" do
    get new_manab_url
    assert_response :success
  end

  test "should create manab" do
    assert_difference('Manab.count') do
      post manabs_url, params: { manab: { manabi: @manab.manabi, title: @manab.title } }
    end

    assert_redirected_to manab_url(Manab.last)
  end

  test "should show manab" do
    get manab_url(@manab)
    assert_response :success
  end

  test "should get edit" do
    get edit_manab_url(@manab)
    assert_response :success
  end

  test "should update manab" do
    patch manab_url(@manab), params: { manab: { manabi: @manab.manabi, title: @manab.title } }
    assert_redirected_to manab_url(@manab)
  end

  test "should destroy manab" do
    assert_difference('Manab.count', -1) do
      delete manab_url(@manab)
    end

    assert_redirected_to manabs_url
  end
end
