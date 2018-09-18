class CommunitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description
end
