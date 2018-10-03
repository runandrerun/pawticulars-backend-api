class FriendRequest < ApplicationRecord
  validate :not_self
  validate :not_pending
  validate :not_friends

  belongs_to :user
  belongs_to :friend, class_name: 'User'

  def accept
    user.friends << friend
    destroy
  end

  def destroy
    @friend_request.destroy
    head :no_content
  end

  def index
    @incoming = FriendRequest.where(friend: current_user)
    @outgoing = current_user.friend_requests
  end

  private

  def not_self
    errors.add(:friend, "you cannot add yourself") if user == friend
  end


  def not_friends
    errors.add(:friend, 'is already added') if user.friends.include?(friend)
  end

  def not_pending
    errors.add(:friend, 'already requested friendship') if friend.pending_friends.include?(user)
  end

end
