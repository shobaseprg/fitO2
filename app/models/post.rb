class Post < ApplicationRecord
  belongs_to :lesson
  validates :title, presence: true
  validates :content, presence: true
end
