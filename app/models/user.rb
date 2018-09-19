class User < ApplicationRecord
  has_many :communities, through: :messages
  has_many :messages
  has_many :dogs, through: :user_dogs
  has_many :user_dogs

 #  validates :password, :presence => true,
 #                      :confirmation => true,
 #                      :length => {:within => 6..40},
 #                      :on => :create
 # validates :password, :confirmation => true,
 #                      :length => {:within => 6..40},
 #                      :allow_blank => true,
 #                      :on => :update
end
