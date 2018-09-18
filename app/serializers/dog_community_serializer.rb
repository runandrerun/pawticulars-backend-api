class DogCommunitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :dog_id, :dog_park_id
end
