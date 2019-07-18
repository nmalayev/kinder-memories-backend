class Api::V1::PostsController < ApplicationController
  before_action :find_post, only: [:update, :show]
  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    # byebug
    @post = Post.new(post_params)
    @post.timeline = Timeline.first
    # curr_user defined in auth_controller and application_controller
    # Automatically assign the post creator as the current logged in user
    @post.user = curr_user 
    
    # If a letter is uploaded, no file is present, therefore don't attach a file and 
    # cause failed validation b/c file = 'undefined'
    if params[:file] != 'undefined' 
      @post.file.attach(params[:file])
    end
    @post.save 
    render json: @post, status: :ok
  end

  def show
    render json: @post, methods: :file_url # file_url in posts.rb
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
    params.permit(:post_type, :title, :description, :letter, :photo, :video, :timeline_id, :user_id, :memory_date)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
