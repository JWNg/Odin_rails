class User < ActiveRecord::Base
  validates :name, presence: true
  has_many :events, foreign_key: :creator_id
  has_many :attended_event, through: :events_users, foreign_key: :event_id, class_name: :event
end
