class Post < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 140 }
  validates :content, presence: true
  has_many :comments, dependent: :destroy
end
