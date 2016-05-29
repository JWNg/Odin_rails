class BookingsController < ApplicationController
  def new    
    binding.pry
    @number_of_passengers = params[:number_of_passengers]
    @flight = Flight.where(id: params[:flight_id])[0]
    @starting_airport = Airport.where(id: @flight.start_id)[0].code
    @destination_airport = Airport.where(id: @flight.finish_id)[0].code
  end
  
  def create
    binding.pry
  end
end
