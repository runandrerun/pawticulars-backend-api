class UserDogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :dog_id
end
