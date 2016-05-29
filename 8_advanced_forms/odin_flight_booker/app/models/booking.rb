class Booking < ActiveRecord::Base
  belongs_to :flights
  has_many :passengers  
  
  validates :flights, presence: true
  validates :passengers, presence: true
end
