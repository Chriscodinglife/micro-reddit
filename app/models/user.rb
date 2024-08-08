class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, length: { minimum: 4, maximum: 12 }, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, length: { minimum: 6, maximum: 16 }, presence: true

end
