class DogPark < ApplicationRecord
  has_many :dog_communities
  has_many :dogs, through: :dog_communities
  has_many :park_communities
  has_many :communities, through: :park_communities

  def formatted
    {
      id: self.id,
      images: self.images,
      name: self.name,
      description: self.description,
      location: self.location,
      dog_run: self.dog_run,
      off_leash: self.off_leash,
      accessibility: self.accessibility,
      lat: self.lat,
      lng: self.lng,
      dogs: self.dogs
    }
  end
end
