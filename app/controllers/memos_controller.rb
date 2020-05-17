class MemosController < ApplicationController
  def show
    @memo = Post.find(params[:id]).memos.where(user_id:current_user.id)
    # binding.pry
  end
  
  def new
    @memo = Memo.new
  end
  
  def create
    memo = Memo.create(memo_params)
    redirect_to root_path
    flash[:notice] = "「メモ」を投稿しました"
  end

  def edit
  end

  def update
  end

  private
  def memo_params
    params.require(:memo).permit( :content, :post_id,:user_id)
  end
end
