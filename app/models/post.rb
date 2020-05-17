class Post < ApplicationRecord
  belongs_to :lesson

  belongs_to :input_user, class_name: "User" , optional: true,foreign_key: "input_user_id"
  belongs_to :output_user, class_name: "User", optional: true,foreign_key: "output_user_id"
  belongs_to :next_input_user, class_name: "User", optional: true,foreign_key: "next_input_user_id"
  belongs_to :next_output_user, class_name: "User", optional: true,foreign_key: "next_output_user_id"
  has_many :memos,dependent: :destroy
  

  validates :title, presence: true
  validates :content, presence: true
end