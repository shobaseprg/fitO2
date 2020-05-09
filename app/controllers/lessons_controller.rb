class LessonsController < ApplicationController

  def index
    @base1 = Lesson.where(base_or_development:0,lesson_no:1).order(sub_number: "ASC")
  end

  def inputs
    @input_posts = Post.where(lesson_id: params[:id])
  end

  def outputs
  end
end
