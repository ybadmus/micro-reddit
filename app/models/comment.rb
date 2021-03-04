class Comment < ApplicationRecord
  validates :body, presence: true, length: { in: 20...100 }
  validates_associated :user
  validates_associated :post
  belongs_to :users
  belongs_to :posts
end
