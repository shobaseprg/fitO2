class PostsController < ApplicationController
  def new
    @output_post = Post.new
  end
end
