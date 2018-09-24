class ApplicationController < ActionController::API
  before_action :authorized

 def encode_token(payload)
   JWT.encode(payload, 'konapanda')
 end

 def auth_headers
   request.headers['Authorization']
 end

 def decoded_token
   if auth_headers
     token = auth_headers
     begin
       JWT.decode(token, 'konapanda')
     rescue JWT::DecodeError
       nil
     end
   end
 end

 def current_user

   if decoded_token
     user_id = decoded_token[0]['user_id']
     @user = User.find(user_id)
   else
     nil
   end
 end

 def logged_in
   !!current_user
 end

 def authorized
   render json: {message: 'Please log in'}, status: :unauthorized unless logged_in
 end
  # before_action :configure_permitted_parameters, if: devise_controller?
  #
  # respond_to :json_string
  # protected
  #
  # def configure_permitted_parameters
  #   added_attrs = [:email, :username, :password]
  #   devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  #   devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  # end
end
