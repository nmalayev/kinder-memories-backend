class User < ApplicationRecord
  validates :username, uniqueness: true

  has_many :posts
  has_many :timelines, through: :posts

  has_secure_password
end
