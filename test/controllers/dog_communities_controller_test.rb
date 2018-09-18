require 'test_helper'

class DogCommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_community = dog_communities(:one)
  end

  test "should get index" do
    get dog_communities_url, as: :json
    assert_response :success
  end

  test "should create dog_community" do
    assert_difference('DogCommunity.count') do
      post dog_communities_url, params: { dog_community: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show dog_community" do
    get dog_community_url(@dog_community), as: :json
    assert_response :success
  end

  test "should update dog_community" do
    patch dog_community_url(@dog_community), params: { dog_community: {  } }, as: :json
    assert_response 200
  end

  test "should destroy dog_community" do
    assert_difference('DogCommunity.count', -1) do
      delete dog_community_url(@dog_community), as: :json
    end

    assert_response 204
  end
end
