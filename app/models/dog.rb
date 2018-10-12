class Dog < ApplicationRecord
  popular
  has_many :dog_communities
  has_many :dog_parks, through: :dog_communities
  has_one :user_dog
  has_one :user, through: :user_dog

  def formatted
    {
      id: self.id,
      name: self.name,
      avatar: self.avatar,
      breed: self.breed,
      bio: self.bio,
      size: self.size,
      temperament: self.temperament,
      energy: self.energy,
      gender: self.gender,
      age: self.age,
      owner: self.formatted_owner,
      parks: self.dog_parks,
      matches: self.find_matches
    }
  end

  def formatted_owner
    {
      id: self.user.id,
      username: self.user.username
    }
  end

  def formatted_dog_park
    {
      id: self.dog_parks.id
    }
  end

  def find_matches
    self.friendships.map do |match|
      Dog.find(match.friend_id)
    end
  end


end
