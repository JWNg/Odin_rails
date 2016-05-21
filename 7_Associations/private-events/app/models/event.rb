class Event < ActiveRecord::Base
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"
  has_many :attendee, through: :events_users, foreign_key: :user_id, class_name: :user
  
  def description
    self[:description]
  end
end
