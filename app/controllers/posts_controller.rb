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
      flash[:notice] = "「教えたいこと」を投稿しました"
    else 
      flash[:alert] = "タイトルと内容どちらも入力してください"
      redirect_to new_lesson_post_path(params[:lesson_id])
    end
  end
# ===================================
# アップデート(教えますから、クリアへ)
# ===================================
  def update
    check_outputer_id = Post.find(params[:id]).next_output_user_id    # 投稿者のidを変数に格納
    if params[:post][:outputer_id].to_i == check_outputer_id    # 投稿者のidと入力のidが正しいかチェック
      Post.find(params[:id]).update(input_or_output: 2)   # 投稿をクリアに更新
      flash[:notice] = "この投稿はクリアされました"
      redirect_to root_path
    else
      flash[:alert] = "idがまちがってます"
      redirect_to post_path(params[:id])
    end
  end


# ===================================
# 投稿詳細表示用
# ===================================
  def show
    @post = Post.find(params[:id])
      if  @post.input_or_output == 0
        @slack = User.find(@post.input_user_id).slack
      else  
        @slack = User.find(@post.next_output_user_id).slack
      end
  end

private

  def output_post_params
    params.require(:post).permit(:title, :content, :lesson_id,:start_input_or_output).merge(input_or_output: 1,next_output_user_id: current_user.id)
  end

end
