class EventController < ApplicationController
  def new

    @event = Event.new
    @params = params
    @session = session
  end

  def index

    @event = Events
  end
  
  def create

    @event = current_user.events.build(event_params) 
    @event.save
    @user = current_user 
    #binding.pry
    #redirect_to user_path(@user)
    render 'show'
  end
  
  def show
    @event = Event.find_by(id: params[:id])
    
  end
  
  private

    def event_params
      params.require(:event).permit(:description, :date)
    end
end
