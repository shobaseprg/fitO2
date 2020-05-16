class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
#  ===================================
#  カスタムバリデーション
#  ===================================
VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i
# ===================================
# アソシエーション
# ===================================
# extend ActiveHash::Associations::ActiveRecordExtensions
# belongs_to_active_hash :team
has_many :posts,foreign_key: :input_user_id ,primary_key: :id,dependent: :nullify
has_many :posts,foreign_key: :output_user_id ,primary_key: :id,dependent: :nullify
has_many :posts,foreign_key: :next_input_user_id ,primary_key: :id,dependent: :nullify
has_many :posts,foreign_key: :next_output_user_id ,primary_key: :id,dependent: :nullify
#  ===================================
#  バリデーション
#  ===================================
validates :name, presence: true, uniqueness: true,length: { maximum: 20 }
validates :slack, presence: true, uniqueness: true,length: { maximum: 50 }
validates :period, presence: true, inclusion: {in: 50..200 }       
validates :style, presence: true, inclusion: {in: 1..2 } 
validates :team_id, presence: true
validates :email, presence: true, uniqueness: true
validates :password, presence: true, format: { with: VALID_PASSWORD_REGEX }, on: :create
end
