class MemosController < ApplicationController
  def show
    @memo = Post.find(params[:id]).memos.find_by(user_id:current_user.id)
  end
  
  def new
    @memo = Memo.new
  end
  
  def create
    @memo = Memo.new(memo_params)
    if @memo.save
      redirect_to memo_path(@memo.post.id),method: :get
      flash[:notice] = "「メモ」を登録しました"
    else 
      flash[:alert] = "内容を入力してください"
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
    if @memo.update(memo_params) == true
        redirect_to memo_path(@memo.post.id),method: :get
        flash[:notice] = "「メモ」を編集しました"
        return
    else
        flash[:alert] = "内容は入力してください"
        redirect_to edit_memo_path(params[:id]),method: :get
    end
  end

  private
  def memo_params
    params.require(:memo).permit( :content, :post_id,:user_id)
  end
end
