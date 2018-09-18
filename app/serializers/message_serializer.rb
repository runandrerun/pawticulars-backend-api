class MessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user_id, :community_id
end
