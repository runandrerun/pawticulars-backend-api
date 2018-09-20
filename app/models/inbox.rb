class Inbox < ApplicationRecord
  has_many :private_messages
  has_many :users, through: :private_messages
end
