class DogPark < ApplicationRecord
  has_many :dog_communities
  has_many :dogs, through: :dog_communities
  has_many :park_communities
  has_many :communities, through: :park_communities
end
