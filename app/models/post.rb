class Post < ApplicationRecord
  belongs_to :users
  has_many :comments
  has_one_attached :image
end
