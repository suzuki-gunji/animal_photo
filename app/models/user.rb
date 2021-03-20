class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :comments

  validates :nickname, presence: true
  validates :profile, length: { maximum: 200 }

  mount_uploader :image, ImageUploader
end
