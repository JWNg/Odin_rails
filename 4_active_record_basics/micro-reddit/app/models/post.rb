class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :text, presence: true, length: { maximum: 500 }
  validates :text, presence: true, length: { maximum: 250 }
end
