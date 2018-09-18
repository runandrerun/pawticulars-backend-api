require 'test_helper'

class UserDogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_dog = user_dogs(:one)
  end

  test "should get index" do
    get user_dogs_url, as: :json
    assert_response :success
  end

  test "should create user_dog" do
    assert_difference('UserDog.count') do
      post user_dogs_url, params: { user_dog: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show user_dog" do
    get user_dog_url(@user_dog), as: :json
    assert_response :success
  end

  test "should update user_dog" do
    patch user_dog_url(@user_dog), params: { user_dog: {  } }, as: :json
    assert_response 200
  end

  test "should destroy user_dog" do
    assert_difference('UserDog.count', -1) do
      delete user_dog_url(@user_dog), as: :json
    end

    assert_response 204
  end
end
