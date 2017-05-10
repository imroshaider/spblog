require 'test_helper'

class ArticleesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articlee = articlees(:one)
  end

  test "should get index" do
    get articlees_url
    assert_response :success
  end

  test "should get new" do
    get new_articlee_url
    assert_response :success
  end

  test "should create articlee" do
    assert_difference('Articlee.count') do
      post articlees_url, params: { articlee: { post: @articlee.post, titile: @articlee.titile, user_id: @articlee.user_id } }
    end

    assert_redirected_to articlee_url(Articlee.last)
  end

  test "should show articlee" do
    get articlee_url(@articlee)
    assert_response :success
  end

  test "should get edit" do
    get edit_articlee_url(@articlee)
    assert_response :success
  end

  test "should update articlee" do
    patch articlee_url(@articlee), params: { articlee: { post: @articlee.post, titile: @articlee.titile, user_id: @articlee.user_id } }
    assert_redirected_to articlee_url(@articlee)
  end

  test "should destroy articlee" do
    assert_difference('Articlee.count', -1) do
      delete articlee_url(@articlee)
    end

    assert_redirected_to articlees_url
  end
end
