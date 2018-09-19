class DogCommunity < ApplicationRecord
  belongs_to :dog
  belongs_to :dog_park
end
