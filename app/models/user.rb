class User < ApplicationRecord
  # has_friendship
  popular
  # acts_as_friend
  has_secure_password

  # after_befriend 'notify_friendship_created value'
  # after_unfriend 'notify_unfriended value'
  # popular
  # has_many :friend_requests, dependent: :destroy
  # has_many :pending_friends, through: :friend_requests, source: :friend
  # has_many :friendships, dependent: :destroy
  # has_many :friends, through: :friendships
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
      communities: formatted_communities,
      all_friends: find_friends
    }
  end

  def find_friends
    self.friendships.map do |friend|
      User.find(friend.friend_id)
    end
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

  # def notify_friendship_created(friendship)
  #   puts "#{name} friended #{friendship.friend.name}"
  # end
  #
  # def notify_unfriended(friendship)
  #   puts "#{name} unfriended #{friendship.friend.name}"
  # end


  # def remove_friend(friend)
  #   current_user.friends.destroy(friend)
  # end
end
