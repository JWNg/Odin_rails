class Event < ActiveRecord::Base
  belongs_to :creator, foreign_key: "creator", class_name: "User"
end
