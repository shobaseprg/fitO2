class MemosController < ApplicationController
  def show
    if current_user == Post.find(params[:id]).input_user || current_user == Post.find(params[:id]).output_user ||current_user == Post.find(params[:id]).next_input_user||current_user == Post.find(params[:id]).next_output_user
      # カレントユーザーに紐づかない投稿の閲覧を防ぐ
      @memo = Post.find(params[:id]).memos.find_by(user_id:current_user.id)
    else
      flash[:alert] = "そのメモは閲覧できません"
      redirect_to root_path
    end
  end
  
  def new
    @memo = Memo.new
  end
  
  def create
    if current_user == Post.find(params[:memo][:post_id]).input_user || current_user == Post.find(params[:memo][:post_id]).output_user ||current_user == Post.find(params[:memo][:post_id]).next_input_user||current_user == Post.find(params[:memo][:post_id]).next_output_user
      # カレントユーザーに紐づかない投稿の作成を防ぐ
      @memo = Memo.new(memo_params)
      if @memo.save
        redirect_to memo_path(@memo.post.id),method: :get
        flash[:notice] = "「メモ」を登録しました"
      else 
        flash[:alert] = "内容を入力してください"
        redirect_to new_post_memo_path(params[:memo][:post_id])
      end
    else 
      flash[:alert] = "不正なアクセスです"
      redirect_to new_post_memo_path(params[:memo][:post_id])
    end
  end

  def edit
    @memo = Memo.find(params[:id])
    unless @memo.user == current_user
      flash[:alert] = "そのメモは編集できません"
      redirect_to root_path
    end
  end

  def update
    @memo = Memo.find(params[:id])
    unless @memo.user == current_user
      flash[:alert] = "そのメモは編集できません"
      redirect_to root_path 
      return
    end
    if @memo.update(memo_params) == true
        redirect_to memo_path(@memo.post.id),method: :get
        flash[:notice] = "「メモ」を編集しました"
        return
    else
        flash[:alert] = "内容は入力してください"
        redirect_to edit_memo_path(params[:id]),method: :get
        return
    end
  end

  private
  def memo_params
    params.require(:memo).permit( :content, :post_id,:user_id)
  end
end
