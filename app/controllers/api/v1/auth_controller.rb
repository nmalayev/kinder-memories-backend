class Api::V1::AuthController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      jwt = JWT.encode({user_id: user.id}, 'super_secret')
      render json: {user: @user, jwt: jwt}
    else
      render json: {errors: "Incorrect credentials. Please try again."}
    end
  end

  def auto_login
    @user = User.find(request.headers["Authorization"])
    render json: @user
  end
end
