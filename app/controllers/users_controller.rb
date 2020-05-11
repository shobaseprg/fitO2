class UsersController < ApplicationController

  def swich
    if current_user.on_off == 0
      current_user.on_off = 1
      current_user.save
    else
      current_user.on_off = 0
      current_user.save
    end
    redirect_to root_path
  end


# ===================================
# マイページ
# ===================================
  def show
    @my_input_posts = Post.where(input_or_output: 0).where(input_user_id:current_user.id)
    @my_output_posts = Post.where(input_or_output: 1).where(next_output_user_id:current_user.id)
    @my_clear_posts = Post.where(input_or_output: 2).where(next_output_user_id:current_user.id)
  end
  
end
