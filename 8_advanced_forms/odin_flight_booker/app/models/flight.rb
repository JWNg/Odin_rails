class Flight < ActiveRecord::Base
  belongs_to :from_airport, :class_name => 'Airport', foreign_key: :start_id
  belongs_to :to_airport, :class_name => 'Airport', foreign_key: :finish_id
  
  belongs_to :bookings
  has_many :passengers  
  
  validates :finish_id, presence: true
  validates :start_id, presence: true
  
  accepts_nested_attributes_for :passengers
  
  def self.search(params)
    if params[:search]
      Flight.where(start_id: params[:from], finish_id: params[:to]).includes(:from_airport, :to_airport)
    else
      Flight.none
    end    
  end  
end
