class DogParkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :location, :accessibility, :lat, :lng
end
