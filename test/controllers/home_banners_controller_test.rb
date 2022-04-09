require "test_helper"

class HomeBannersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_banner = home_banners(:one)
  end

  test "should get index" do
    get home_banners_url
    assert_response :success
  end

  test "should get new" do
    get new_home_banner_url
    assert_response :success
  end

  test "should create home_banner" do
    assert_difference('HomeBanner.count') do
      post home_banners_url, params: { home_banner: { images: @home_banner.images } }
    end

    assert_redirected_to home_banner_url(HomeBanner.last)
  end

  test "should show home_banner" do
    get home_banner_url(@home_banner)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_banner_url(@home_banner)
    assert_response :success
  end

  test "should update home_banner" do
    patch home_banner_url(@home_banner), params: { home_banner: { images: @home_banner.images } }
    assert_redirected_to home_banner_url(@home_banner)
  end

  test "should destroy home_banner" do
    assert_difference('HomeBanner.count', -1) do
      delete home_banner_url(@home_banner)
    end

    assert_redirected_to home_banners_url
  end
end
