class User < ApplicationRecord
  has_many :communities, through: :messages
  has_many :messages 
  has_many :dogs, through: :user_dogs
  has_many :user_dogs
end
