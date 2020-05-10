class LessonsController < ApplicationController
-# ===================================
-# レッスン一覧を表示するためのコントローラー
-# ===================================
  def index
    @base1 = Lesson.where(base_or_development:0,lesson_no:1).order(sub_number: "ASC")
  end


-# ===================================
-# 質問一覧を表示するためのコントローラー
-# ===================================
  def inputs
    @input_posts = Post.where(lesson_id: params[:id])
    # @lesson = Lesson.find(params[:id])
  #   case @lesson.base_or_development 
  #     when 0 then
  #       @category = "基礎"
  #     when 1 then
  #       @category = "応用"
  #     when 2 then
  #       @category = "最終課題"
  #     end
  #     binding.pry
  end

  def outputs
  end
end
