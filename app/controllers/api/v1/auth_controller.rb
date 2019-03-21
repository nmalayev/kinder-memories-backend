class Api::V1::AuthController < ApplicationController

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      render json: @user
    else
      render json: {errors: "Incorrect credentials. Please try again."}
    end
  end

  def auto_login
    @user = User.find(request.headers["Authorization"])
    render json: @user
  end
end
