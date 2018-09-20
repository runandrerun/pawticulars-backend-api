class Dog < ApplicationRecord
  has_many :dog_communities
  has_many :dog_parks, through: :dog_communities
  has_one :user_dog
  has_one :user, through: :user_dog

end
