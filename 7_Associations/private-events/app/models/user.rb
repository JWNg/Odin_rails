class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :events, foreign_key: :creator
end
