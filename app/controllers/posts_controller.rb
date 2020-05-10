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
    post = Post.new(output_post_params)
    if post.save
      redirect_to root_path
    else 
      flash[:alert] = "タイトルと内容どちらも入力してください"
      redirect_to new_lesson_post_path(params[:lesson_id])
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
  def output_post_params
    params.require(:post).permit(:title, :content, :lesson_id,:start_input_or_output).merge(input_or_output: 1,next_output_user_id: current_user.id)
  end

end
