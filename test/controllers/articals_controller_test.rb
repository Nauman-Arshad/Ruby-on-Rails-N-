require "test_helper"

class ArticalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artical = articals(:one)
  end

  test "should get index" do
    get articals_url
    assert_response :success
  end

  test "should get new" do
    get new_artical_url
    assert_response :success
  end

  test "should create artical" do
    assert_difference('Artical.count') do
      post articals_url, params: { artical: { body: @artical.body, title: @artical.title } }
    end

    assert_redirected_to artical_url(Artical.last)
  end

  test "should show artical" do
    get artical_url(@artical)
    assert_response :success
  end

  test "should get edit" do
    get edit_artical_url(@artical)
    assert_response :success
  end

  test "should update artical" do
    patch artical_url(@artical), params: { artical: { body: @artical.body, title: @artical.title } }
    assert_redirected_to artical_url(@artical)
  end

  test "should destroy artical" do
    assert_difference('Artical.count', -1) do
      delete artical_url(@artical)
    end

    assert_redirected_to articals_url
  end
end
