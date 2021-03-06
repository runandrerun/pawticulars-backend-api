class UsersController < ApplicationController
  # before_action :set_user, only: [:show, :update, :destroy, :create]
   skip_before_action :authorized, only: [:create, :show]

  # GET /users
  def index
    @users = User.all

    @newUsers = @users.each do |user|
      user.formatted
    end

    render json: @newUsers
  end

  # GET /users/1
  def show
    # json_string = UserSerializer.new(@user).serialized_json
    render json: @user.formatted
    # render json: json_string
  end

  # POST /users
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, jwt: token}, status: :created
    else
      render json: { message: 'Invalid Username or Password' }, status: :bad_request
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      # params.fetch(:user, {})
      params.require(:user).permit(:username, :password, :password_confirmation, :bio, :email, :location, :avatar, :display_name)
    end
end
