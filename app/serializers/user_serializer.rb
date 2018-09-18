class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :location
end
