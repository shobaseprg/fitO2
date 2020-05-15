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
    if Post.find(params[:id]).next_output_user_id? && User.exists?(id: Post.find(params[:id]).next_output_user_id)
      check_outputer_id = Post.find(params[:id]).next_output_user_id    # 投稿者のidを変数に格納
      if params[:post][:outputer_id].to_i == check_outputer_id    # 投稿者のidと入力のidが正しいかチェック
        Post.find(params[:id]).update(input_or_output: 2,next_input_user_id: current_user.id)   # 投稿をクリアに更新,2次質問者に自分を格納
        output_user = User.find(check_outputer_id)  # 投稿者を変数に格納
        output_user.output_times += 1 # 投稿者のアウトプット回数を計上する
        output_user.save
        flash[:notice] = "この投稿はクリアされました"
        redirect_to root_path
      else
        flash[:alert] = "idがまちがってます"
        redirect_to post_path(params[:id])
      end
    else
      flash[:alert] = "ユーザーが退会しました"
      redirect_to root_path
    end
  end


# ===================================
# 投稿詳細表示用
# ===================================
  def show
    @post = Post.find_by(id:params[:id])
      if  @post.input_or_output == 0
        if @post.input_user_id? && User.exists?(id: @post.input_user_id)
            @slack = @post.input_user.slack
        else
          @slack = "ユーザーは退会しています"
        end 
      else  
        if @post.next_output_user_id? && User.exists?(id: @post.next_output_user_id)
            @slack = @post.next_output_user.slack
        else
            @slack = "ユーザーは退会しています"
        end
      end
  end

# ===================================
# マイページからの詳細表示用
# ===================================
def myshow
  @post = Post.find(params[:id])
end

# ===================================
# 質問から教えますへ更新用
# ===================================
def gooutput
  @post = Post.find(params[:id])
  if current_user.id == params[:post][:outputer_id].to_i #自分のidは弾く
    flash[:alert] = "それは自分のidです"
    redirect_to myshow_post_path(params[:id]) 
    return
  else
    if User.find_by(id: params[:post][:outputer_id]) == nil#存在しないidは弾く
      flash[:alert] = "そのユーザーは存在しません"
      redirect_to myshow_post_path(params[:id])
      return
    else
      @post.update(input_or_output: 1,output_user_id: params[:post][:outputer_id],next_output_user_id:current_user.id)
      # この質問をアウトプットへ移行、output_user_idに教えてもらった人のid,next_output_user_idに自分のidを格納
      @post.update(first_update_date: @post.updated_at)
      # △△△△記述箇所△△△△記述箇所△△△△記述箇所△△△△記述箇所△△△△記述箇所△△△△記述箇所△△△
      # user = User.find_by(id:params[:post][:outputer_id])
      binding.pry
      user = @post.output_user
      user.output_times += 1
      user.save
      # 教えてくれた人のアウトプット回数を計上
      flash[:notice] = "この投稿は「教えます」一覧に移行しました"
      redirect_to root_path

    end
  end
end


private

  def output_post_params
    params.require(:post).permit(:title, :content, :lesson_id,:start_input_or_output).merge(input_or_output: 1,next_output_user_id: current_user.id)
  end

end
