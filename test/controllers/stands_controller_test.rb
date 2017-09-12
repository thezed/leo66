require 'test_helper'

class StandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stand = stands(:one)
  end

  test "should get index" do
    get stands_url
    assert_response :success
  end

  test "should get new" do
    get new_stand_url
    assert_response :success
  end

  test "should create stand" do
    assert_difference('Stand.count') do
      post stands_url, params: { stand: { additional: @stand.additional, artikul: @stand.artikul, category_id: @stand.category_id, format: @stand.format, image_content_type: @stand.image_content_type, image_file_name: @stand.image_file_name, image_file_size: @stand.image_file_size, image_updated_at: @stand.image_updated_at, name: @stand.name, price: @stand.price, pricefigure: @stand.pricefigure, quantity: @stand.quantity, size: @stand.size } }
    end

    assert_redirected_to stand_url(Stand.last)
  end

  test "should show stand" do
    get stand_url(@stand)
    assert_response :success
  end

  test "should get edit" do
    get edit_stand_url(@stand)
    assert_response :success
  end

  test "should update stand" do
    patch stand_url(@stand), params: { stand: { additional: @stand.additional, artikul: @stand.artikul, category_id: @stand.category_id, format: @stand.format, image_content_type: @stand.image_content_type, image_file_name: @stand.image_file_name, image_file_size: @stand.image_file_size, image_updated_at: @stand.image_updated_at, name: @stand.name, price: @stand.price, pricefigure: @stand.pricefigure, quantity: @stand.quantity, size: @stand.size } }
    assert_redirected_to stand_url(@stand)
  end

  test "should destroy stand" do
    assert_difference('Stand.count', -1) do
      delete stand_url(@stand)
    end

    assert_redirected_to stands_url
  end
end
