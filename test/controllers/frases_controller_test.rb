require "test_helper"

class FrasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frase = frases(:one)
  end

  test "should get index" do
    get frases_url
    assert_response :success
  end

  test "should get new" do
    get new_frase_url
    assert_response :success
  end

  test "should create frase" do
    assert_difference('Frase.count') do
      post frases_url, params: { frase: { frase: @frase.frase } }
    end

    assert_redirected_to frase_url(Frase.last)
  end

  test "should show frase" do
    get frase_url(@frase)
    assert_response :success
  end

  test "should get edit" do
    get edit_frase_url(@frase)
    assert_response :success
  end

  test "should update frase" do
    patch frase_url(@frase), params: { frase: { frase: @frase.frase } }
    assert_redirected_to frase_url(@frase)
  end

  test "should destroy frase" do
    assert_difference('Frase.count', -1) do
      delete frase_url(@frase)
    end

    assert_redirected_to frases_url
  end
end
