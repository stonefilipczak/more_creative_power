require 'test_helper'

class PhotoRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_request = photo_requests(:one)
  end

  test "should get index" do
    get photo_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_request_url
    assert_response :success
  end

  test "should create photo_request" do
    assert_difference('PhotoRequest.count') do
      post photo_requests_url, params: { photo_request: { contact: @photo_request.contact, reply: @photo_request.reply, schedule: @photo_request.schedule, status: @photo_request.status, user_id: @photo_request.user_id } }
    end

    assert_redirected_to photo_request_url(PhotoRequest.last)
  end

  test "should show photo_request" do
    get photo_request_url(@photo_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_request_url(@photo_request)
    assert_response :success
  end

  test "should update photo_request" do
    patch photo_request_url(@photo_request), params: { photo_request: { contact: @photo_request.contact, reply: @photo_request.reply, schedule: @photo_request.schedule, status: @photo_request.status, user_id: @photo_request.user_id } }
    assert_redirected_to photo_request_url(@photo_request)
  end

  test "should destroy photo_request" do
    assert_difference('PhotoRequest.count', -1) do
      delete photo_request_url(@photo_request)
    end

    assert_redirected_to photo_requests_url
  end
end
