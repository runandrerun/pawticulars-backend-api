class User < ApplicationRecord

  has_secure_password

  has_many :messages
  has_many :communities, through: :messages
  has_many :user_dogs
  has_many :dogs, through: :user_dogs

  validates :username, presence: :true, uniqueness: :true
  validates :password, presence: :true

  def formatted
    {
      id: self.id,
      username: self.username,
      avatar: self.avatar,
      location: self.location,
      display_name: self.display_name,
      dogs: self.dogs,
      dog_parks: self.doggy_parks
    }
  end

 #  validates :password, :presence => true,
 #                      :confirmation => true,
 #                      :length => {:within => 6..40},
 #                      :on => :create
 # validates :password, :confirmation => true,
 #                      :length => {:within => 6..40},
 #                      :allow_blank => true,
 #                      :on => :update
  def doggy_parks
    self.dogs.map do |dog|
      dog.dog_parks
    end
  end
end
