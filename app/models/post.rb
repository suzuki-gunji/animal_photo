class Post < ApplicationRecord
  #postに対する定義
  belongs_to :user

  has_many :comments

  #ユーザーがいいねしたpostに対する定義
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes

  mount_uploader :image, ImageUploader

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :animal_type

  validates :title, :image, :animal_type_id, presence: true
  validates :animal_type_id, numericality: { other_than: 1 } 

  def liked_by?(user) #いいねしているかどうか
    likes.where(user_id: user.id).exists?
  end
end

