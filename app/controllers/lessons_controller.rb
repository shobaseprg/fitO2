class LessonsController < ApplicationController

  def index
    @base1 = Lesson.where(base_or_development:0,lesson_no:1).order(sub_number: "ASC")
  end

  def inputs
    @input_posts = Post.where(lesson_id: params[:id]).where(input_or_output: 0)
    @lesson = Lesson.find(params[:id])
      case @lesson.base_or_development
        when 0 then
          @category = "基礎"
        end
  end

  def outputs
  end
end
