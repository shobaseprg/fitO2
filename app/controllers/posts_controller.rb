class PostsController < ApplicationController
# ===================================
# おしえますnew
# ===================================
  def new
    @post = Post.new
  end
# ===================================
# おしえますcreate
# ===================================
def create
    post = Post.new(post_params)
    if post.save
      flash[:notice] = "投稿完了しました"
      redirect_to root_path
    else 
      flash[:alert] = "タイトルと内容どちらも入力してください"
      # redirect_to new_lesson_post_path(params[:lesson_id])
      redirect_to root_path
    end
end

# ===================================
# 質問new
# ===================================
def new_input
    @post = Post.new
end
# ===================================
# 質問create
# ===================================
def create_input
  post = Post.new(input_post_params)
  if post.save
    flash[:notice] = "投稿完了しました"
    redirect_to root_path
  else 
    flash[:alert] = "タイトルと内容どちらも入力してください"
    redirect_to create_input_post_path(params[:lesson_id])
  end
end

# ===================================
# 投稿詳細表示用
# ===================================
def show
  @post = Post.find(params[:id])
    if @post.input_or_output = 0
      @slack = User.find(@post.input_user_id).slack
    end
end

private
  def post_params
    params.require(:post).permit(:title, :content, :lesson_id,:start_input_or_output,:input_or_output,:next_output_user_id)
  end

end
