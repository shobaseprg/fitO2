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

  # ===================================
  #質問編集
  # ===================================
  def edit
    @post = Post.find(params[:id])
  end

  # ===================================
  #質問更新
  # ===================================
  def update
    @post = Post.find(params[:id])
    if @post.update(edit_post_params) == true
        redirect_to root_path
        flash[:notice] = "「質問」を編集しました"
        return
    else
        flash[:alert] = "タイトルと内容どちらも入力してください"
        redirect_to edit_input_post_path(@post.id),method: :get
    end
  end

  # ===================================
  #質問削除
  # ===================================
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "「質問」を削除しました"
    redirect_to root_path
  end

private
  def input_post_params
    params.require(:post).permit(:title, :content, :lesson_id,:start_input_or_output).merge(input_or_output: 0,input_user_id: current_user.id)
  end
 
  def edit_post_params
    params.require(:post).permit(:title, :content).merge(lesson_id: @post.lesson_id, start_input_or_output:@post.start_input_or_output,input_or_output: @post.input_or_output,input_user_id: current_user.id)
  end
end