class Dog < ApplicationRecord
  has_many :dog_parks, through: :dog_communities
  has_many :dog_communities
  has_many :users, through: :user_dogs
  has_many :user_dogs
end
