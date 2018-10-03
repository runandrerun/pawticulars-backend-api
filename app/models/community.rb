class Community < ApplicationRecord
  has_many :messages
  has_many :park_communities
  has_many :users, through: :messages
  has_many :dog_parks, through: :park_communities

  def formatted
    {
      id: self.id,
      title: self.title,
      description: self.description,
      messages: self.formatted_messages
    }
  end

  def all_messages
    self.messages.map do |msg|
      msg.messages
    end
  end

  def formatted_messages
    self.messages.map do |msg|
      msg.formatted
    end
  end
end
