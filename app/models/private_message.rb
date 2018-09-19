class PrivateMessage < ApplicationRecord
  belongs_to :user
  belongs_to :inbox
end
