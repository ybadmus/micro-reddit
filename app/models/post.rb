class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 4...20 }
  validates :body, presence: true, length: { in: 20...150 }
  validates_associated :user
  belongs_to :user
  has_many :comments
end
