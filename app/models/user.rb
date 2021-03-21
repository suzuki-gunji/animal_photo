class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #postに対する定義
  has_many :posts, dependent: :destroy

  has_many :comments

  #ユーザーがいいねしたpostに対する定義
  has_many :likes, dependent: :destroy
  has_many :like_posts, through: :likes, source: :post

  validates :nickname, presence: true
  validates :profile, length: { maximum: 200 }

  mount_uploader :image, ImageUploader
end
