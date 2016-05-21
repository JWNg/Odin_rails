class UserController < ApplicationController
  def new
    @user = User.new
    @session = session
  end

  def create
    #binding.pry
    @user = User.create(user_params)
    if @user
      log_in @user
      render 'show'
    else
      render 'new'
    end
  end

  def show
    @session = session
    @params = params
    @user = current_user
    @events = @user.events
    @descriptions = []
    #binding.pry
    if @user.events      
      #binding.pry
      for i in 0..(@events.size-1)  
        @descriptions << @user.events[i].description
      end 
      #binding.pry
    else
      @events = []
    end
    #binding.pry
  end
  
  private

    def user_params
      params.require(:user).permit(:name)
    end
end
