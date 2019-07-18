class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :show]
  
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.save
      jwt = encode_token(@user) # in application_controller.rb
      # response.jwt used in setCurrentUser fn in FE
      render json: {user: @user, jwt: jwt}, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: @user, status: :ok
  end
  
  private

  def user_params
    params.permit(:name, :username, :password, :relation)
  end

  def find_user
    @user = user.find(params[:id])
  end
end
