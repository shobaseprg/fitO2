class EntrancesController < ApplicationController
  def index
    @new_posts = Post.where(input_or_output:0).order('id DESC').limit(5)
  end
end
