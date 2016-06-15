class BookingsController < ApplicationController
  def new    
    
    @flight = Flight.find(params[:flight_id])
    @id = params[:flight_id]
    @booking = Booking.new
    @booking.flight = @flight
    #binding.pry
    params[:number_of_passengers].to_i.times { @flight.passengers.build }
    #@flight.passengers.build if params[:passengers]
    #@number_of_passengers = params[:number_of_passengers]
    #@flight = Flight.where(id: params[:flight_id])[0]
    #@starting_airport = Airport.where(id: @flight.start_id)[0].code
    #@destination_airport = Airport.where(id: @flight.finish_id)[0].code
    binding.pry
  end
  
  def update  
    binding.pry
  end
  
  def create
    @booking = Booking.new
    @flight = Flight.find(params[:booking][:flight_attributes][:id])
    @booking.flight = @flight    
    if @booking.save
      @passengers = create_passengers      
      render :show
    else
      render :new
    end

    #params2 = flight_params
    #create a booking
    #create passengers 
    #add booking_id to flight
  end
  
  def show
    @flight = @booking.flight
    @passengers = @flight.passengers
    binding.pry
  end
  
  private
  def booking_params
    params.require(:booking).permit(:flight_attributes => [:id, :passengers_attributes => [:name, :email]])
  end
  
  def create_passengers
    booking_params[:flight_attributes][:passengers_attributes].each do |k, v|
      @flight.passengers.create(v)
    end
  end
end
