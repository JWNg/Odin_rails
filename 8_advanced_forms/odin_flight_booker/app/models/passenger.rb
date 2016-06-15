class Passenger < ActiveRecord::Base
  belongs_to :flight
  
  validates :name, presence: true
  validates :email, presence: true
end
