class Booking < ActiveRecord::Base
  has_one :flight #, inverse_of: :passengers
  has_many :passengers, through: :flights
  
  accepts_nested_attributes_for :flight
  accepts_nested_attributes_for :passengers
  
  #validates :flights, presence: true
  #validates :passengers, presence: true
end
