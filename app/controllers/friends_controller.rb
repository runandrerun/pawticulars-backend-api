class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :index, :update, :destroy]

  # GET /friends
  def index
    # @friends = Friend.all
    @friends = current_user.friends
    render json: @friends
  end
  # GET /friends/1
  def show
    render json: @friend
  end

  # POST /friends
  def create
    @friend = Friend.new(friend_params)

    if @friend.save
      render json: @friend, status: :created, location: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /friends/1
  def update
    if @friend.update(friend_params)
      render json: @friend
    else
      render json: @friend.errors, status: :unprocessable_entity
    end
  end

  # DELETE /friends/1
  # def destroy
  #   @friend.destroy
  # end

  def destroy
    current_user.remove_friend(@friend)
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_friend
    #   @friend = Friend.find(params[:id])
    # end

    def set_friend
      @friend = current_user.friends.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def friend_params
        # params.require(:friend).permit(*)
      params.fetch(:friend, {})
    end
end
