require 'test_helper'

class ParkCommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @park_community = park_communities(:one)
  end

  test "should get index" do
    get park_communities_url, as: :json
    assert_response :success
  end

  test "should create park_community" do
    assert_difference('ParkCommunity.count') do
      post park_communities_url, params: { park_community: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show park_community" do
    get park_community_url(@park_community), as: :json
    assert_response :success
  end

  test "should update park_community" do
    patch park_community_url(@park_community), params: { park_community: {  } }, as: :json
    assert_response 200
  end

  test "should destroy park_community" do
    assert_difference('ParkCommunity.count', -1) do
      delete park_community_url(@park_community), as: :json
    end

    assert_response 204
  end
end
