class Api::V1::PostsController < ApplicationController
  before_action :find_post, only: [:update, :show]
  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.create(game_params)
    render json: @post, status: :ok
  end

  def show
    render json: @post, status: :ok
  end
  # Methods below are not currently needed for MVP:
  
  def update
    @post.update(post_params)
    if @post.save
      render json: @post, status: :accepted
    else
      render json: { errors: @post.errors.full_messages }, status: :unprocessible_entity
    end
  end


  def destroy
    @post.destroy
  end

  private

  def post_params
    params.permit(:post_type, :title, :description, :letter, :image, :video, :timeline_id, :user_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
