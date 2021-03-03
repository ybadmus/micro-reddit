class Post < ApplicationRecord
  self.table_name = 'post'
  validates :title, presence: true, length: { in: 4...20 }
  validates :body, presence: true, length: { in: 20...150 }
  belongs_to :user
end
