class Lesson < ApplicationRecord
  has_many :posts

  validates :active, presence: true, inclusion: {in: 0..1 } 
end
