class User < ApplicationRecord
  self.table_name = 'user'
  validates :name, presence: true, length: { in: 4...15 }
  has_many :post
end
