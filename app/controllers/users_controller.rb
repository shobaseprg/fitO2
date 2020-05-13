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

  def index
  end


# ===================================
# マイページ
# ===================================
  def show
    @my_input_posts = Post.where(input_or_output: 0).where(input_user_id:current_user.id)
    @my_output_posts = Post.where(input_or_output: 1).where(next_output_user_id:current_user.id)
    @my_clear_posts = Post.where(input_or_output: 2).where(next_output_user_id:current_user.id)
  end

# ===================================
# input履歴表示用
# ===================================
  def history_input
    @first_input_posts = Post.where(input_user_id: current_user.id).where.not(input_or_output:0)
    # 質問から教えますに移行した投稿を格納([おしえます]と[fito]の場合がありえる)
    @second_input_posts = Post.where(next_input_user_id: current_user.id,input_or_output:2)
    # 教えます掲示板からfitOに移行した投稿を格納(fitoの場合しかない)
  end

  # ===================================
# output履歴表示用
# ===================================
  def history_output
    @first_output_posts_from_question = Post.where(output_user_id: current_user.id).where.not(input_or_output:0)
    # 掲示板から教えた場合に移行した投稿を格納
    @second_output_posts_from_mypost = Post.where(next_output_user_id: current_user.id,input_or_output:2)
    # 掲示板から教えた投稿を格納
  end
# ===================================
# ランキング履歴表示用
# ===================================
  def ranking_all
    @q = User.search(params[:q])
    users = @q.result
    @users = users.order(output_times: "DESC") 
  end
end
