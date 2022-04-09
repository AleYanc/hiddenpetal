require "test_helper"

class MarqueesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marquee = marquees(:one)
  end

  test "should get index" do
    get marquees_url
    assert_response :success
  end

  test "should get new" do
    get new_marquee_url
    assert_response :success
  end

  test "should create marquee" do
    assert_difference('Marquee.count') do
      post marquees_url, params: { marquee: { title: @marquee.title } }
    end

    assert_redirected_to marquee_url(Marquee.last)
  end

  test "should show marquee" do
    get marquee_url(@marquee)
    assert_response :success
  end

  test "should get edit" do
    get edit_marquee_url(@marquee)
    assert_response :success
  end

  test "should update marquee" do
    patch marquee_url(@marquee), params: { marquee: { title: @marquee.title } }
    assert_redirected_to marquee_url(@marquee)
  end

  test "should destroy marquee" do
    assert_difference('Marquee.count', -1) do
      delete marquee_url(@marquee)
    end

    assert_redirected_to marquees_url
  end
end
