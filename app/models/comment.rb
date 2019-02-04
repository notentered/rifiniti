class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :comments_users
  has_many :likes, through: :comments_users, source: :user
end
