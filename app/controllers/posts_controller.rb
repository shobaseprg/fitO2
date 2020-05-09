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
  Post.create(post_params)
  redirect_to root_path
end
# ===================================
# マークダウンプレビュー
# ===================================


private
  def post_params
    params.require(:post).permit(:title, :content, :lesson_id,:start_input_or_output).merge(input_or_output: 1,next_output_user_id: current_user.id)

  end

end
