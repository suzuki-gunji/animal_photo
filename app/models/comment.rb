class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :animal_post
end
