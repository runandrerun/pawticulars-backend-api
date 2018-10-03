class Message < ApplicationRecord
  belongs_to :user
  belongs_to :community

  def formatted
    {
      id: self.id,
      content: self.content,
      user: self.find_user,
      community: self.find_comm
    }
  end

  def find_user
    User.find(self.user_id)
  end

  def find_comm
    Community.find(self.community_id)
  end
end
