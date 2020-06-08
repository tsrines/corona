class Api::V1::AuthController < ApplicationController

  def login
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      token = encode_token(user.id)
      render json: {user: user, token: token}
    else
      render json: {errors: "Token not valid, please login again"}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else 
      render json: {errors: "Please log in again, session has expired"}
    end
  end
end