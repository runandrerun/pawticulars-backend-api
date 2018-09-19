class ParkCommunity < ApplicationRecord
  belongs_to :community
  belongs_to :dog_park
end
