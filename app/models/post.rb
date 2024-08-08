class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :user_id, presence: true
  validates :link, length: { minimum: 5 }, allow_blank: true

  

end
