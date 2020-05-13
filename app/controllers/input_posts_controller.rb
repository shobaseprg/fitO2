class InputPostsController < ApplicationController
  # ===================================
  # 質問new
  # ===================================
  def new
    @post = Post.new
  end
  # ===================================
  # 質問create
  # ===================================
  def create
    post = Post.new(input_post_params)
    if post.save
      redirect_to root_path
      flash[:notice] = "「質問」を投稿しました"
    else 
      flash[:alert] = "タイトルと内容どちらも入力してください"
      redirect_to new_lesson_post_path(params[:lesson_id])
    end
  end

private
  def input_post_params
    params.require(:post).permit(:title, :content, :lesson_id,:start_input_or_output).merge(input_or_output: 0,input_user_id: current_user.id)
    質問から教えますへ移行の投稿を格納
  end

end