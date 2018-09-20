class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :location
  has_many :dogs
end
