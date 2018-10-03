class AuthController < ApplicationController
  skip_before_action :authorized, only: [:login]

  def login
    @user = User.find_by(username: auth_params['username'])
    if @user && @user.authenticate(auth_params['password'])
      token = encode_token({user_id: @user.id})
      render json: { user: @user.formatted, jwt: token} , status: :created
    else
      render json: {message: 'Invalid Login'}, status: :unauthorized
    end
  end

  def reauth
    render json: @user.formatted, status: :accepted
  end

  private

  def auth_params
    params.require(:user).permit(:username, :password)
  end
end
