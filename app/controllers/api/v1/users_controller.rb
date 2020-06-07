class Api::V1::UsersController < ApplicationController
  def create
    # let's make a user using the email and password from the params
    user = User.new(
      email: params[:email],
      password: params[:password],
    )

    if user.save
      token = encode_token(user.id)
      render json: {user: user, token: token}
    else
      render json: {errors: user.errors.full_messages}
    end

  end
end