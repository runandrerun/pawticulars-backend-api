class Community < ApplicationRecord
  has_many :messages
  has_many :park_communities
  has_many :users, through: :messages
  has_many :dog_parks, through: :park_communities
end
