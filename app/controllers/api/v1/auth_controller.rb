class Api::V1::AuthController < ApplicationController

  # This controller manages logins. New login = new auth instance

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      jwt = encode_token(@user)
      render json: {user: @user, jwt: jwt}
    else
      render json: {errors: "Incorrect credentials. Please try again."}
    end
  end

  def auto_login
    if logged_in?
      render json: curr_user # used in componentDidMount() for auto-login
    else
      # Error handling if faulty JWT token is sent
      render json: {errors: "No user to auto login"}
    end
  end

end
