class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable

         has_many :posts
#  ===================================
#  カスタムバリデーション
#  ===================================
VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
# ===================================
# アソシエーション
# ===================================
has_many :posts
#  ===================================
#  バリデーション
#  ===================================
validates :name, presence: true, uniqueness: true,length: { maximum: 20 }
validates :slack, presence: true, length: { maximum: 50 }
validates :period, presence: true, inclusion: {in: 50..999 }       
validates :email, presence: true, uniqueness: true
validates :password, format: { with: VALID_PASSWORD_REGEX }
end
