class FlightsController < ApplicationController

  def index
    @airport_options = Airport.all.map{|a| [a.code, a.id] } 
    @dates = Flight.all.map{|f| [f.start_date_time] }
    @number_of_passengers = (1..4).map {|number| [number.to_s]}
    @search_results = Flight.search(params)
  end
  
  #def new    
  #  @flight = Flight.where(id: params[:flight_id])[0]
  #  @starting_airport = Airport.where(id: @flight.start_id)[0].code
  #  @destination_airport = Airport.where(id: @flight.finish_id)[0].code
  #end 
  
end
