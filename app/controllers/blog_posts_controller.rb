class BlogPostsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    blogpost = BlogPost.new(blogpost_params)
    if blogpost.save
      render json: blogpost, status: :created
    else
      render json: blogpost.errors, status: :unprocessable_entity
    end
  end

  private

  def blogpost_params
    params.require(:blogpost).permit(:name)
  end
end
