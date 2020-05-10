class LessonsController < ApplicationController

  def index
    @base1 = Lesson.where(base_or_development:0,lesson_no:1).order(sub_number: "ASC")
    @base2 = Lesson.where(base_or_development:0,lesson_no:2).order(sub_number: "ASC")
    @base3 = Lesson.where(base_or_development:0,lesson_no:3).order(sub_number: "ASC")
    @base4 = Lesson.where(base_or_development:0,lesson_no:4).order(sub_number: "ASC")
    @base5 = Lesson.where(base_or_development:0,lesson_no:5).order(sub_number: "ASC")
    @base6 = Lesson.where(base_or_development:0,lesson_no:6).order(sub_number: "ASC")
    @base7 = Lesson.where(base_or_development:0,lesson_no:7).order(sub_number: "ASC")
    @base8 = Lesson.where(base_or_development:0,lesson_no:8).order(sub_number: "ASC")
    @base9 = Lesson.where(base_or_development:0,lesson_no:9).order(sub_number: "ASC")

    @development1 = Lesson.where(base_or_development:1,lesson_no:1).order(sub_number: "ASC")
    @development2 = Lesson.where(base_or_development:1,lesson_no:2).order(sub_number: "ASC")
    @development3 = Lesson.where(base_or_development:1,lesson_no:3).order(sub_number: "ASC")
    @development4 = Lesson.where(base_or_development:1,lesson_no:4).order(sub_number: "ASC")
    @development5 = Lesson.where(base_or_development:1,lesson_no:5).order(sub_number: "ASC")
    @development6 = Lesson.where(base_or_development:1,lesson_no:6).order(sub_number: "ASC")
    @development7 = Lesson.where(base_or_development:1,lesson_no:7).order(sub_number: "ASC")
    @development8 = Lesson.where(base_or_development:1,lesson_no:8).order(sub_number: "ASC")
    @development9 = Lesson.where(base_or_development:1,lesson_no:9).order(sub_number: "ASC")
    @development10 = Lesson.where(base_or_development:1,lesson_no:10).order(sub_number: "ASC")
    @development11 = Lesson.where(base_or_development:1,lesson_no:11).order(sub_number: "ASC")
    @development12 = Lesson.where(base_or_development:1,lesson_no:12).order(sub_number: "ASC")
    @development13 = Lesson.where(base_or_development:1,lesson_no:13).order(sub_number: "ASC")
    @development14 = Lesson.where(base_or_development:1,lesson_no:14).order(sub_number: "ASC")

    @last_task = Lesson.where(base_or_development:2,lesson_no:1).order(sub_number: "ASC")

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
