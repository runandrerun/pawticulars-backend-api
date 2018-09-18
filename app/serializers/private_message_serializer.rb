class PrivateMessageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :user_id, :inbox_id
end
