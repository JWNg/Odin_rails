class UsersController < ApplicationController
  
  def index
    @name = "I am the index action! INDEXXXX"
  end
  
  def new
    @name = "I am from the UsersController#new  NEWWWWW"
  end
  
  def edit
    @name = "I am from the UsersController#edit EDITTTT"
  end
  
  def show
    @name = "I am from the UsersController#show SHOWWWW"
  end 
  
  def create
    @name = params.each do |k,v|
      p "#{k} is #{v}"
    end
  end
  
end
