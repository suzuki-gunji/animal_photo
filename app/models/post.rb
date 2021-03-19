class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :animal_type

  validates :title, :image, :animal_type_id, presence: true
  validates :animal_type_id, numericality: { other_than: 1 } 

end

