class User < ApplicationRecord

  has_secure_password
  has_many :friend_requests, dependent: :destroy
  has_many :pending_friends, through: :friend_requests, source: :friend
  has_many :friendships, dependent: :destroy
  has_many :friends, through: :friendships
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
      bio: self.bio,
      location: self.location,
      display_name: self.display_name,
      dogs: self.all_dogs,
      dog_parks: self.doggy_parks,
      messages: formatted_messages,
      communities: formatted_communities
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

 def all_dogs
  self.dogs.map do |dog|
    dog.formatted
  end
 end


  def doggy_parks
    self.dogs.map do |dog|
      dog.dog_parks.map do |park|
        park.formatted
      end
    end
  end

  def formatted_messages
    self.messages.map do |msg|
      msg.formatted
    end
  end

  def formatted_communities
    self.communities.map do |comm|
      comm.formatted
    end
  end

  def remove_friend(friend)
    current_user.friends.destroy(friend)
  end
end
