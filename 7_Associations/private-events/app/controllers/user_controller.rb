class UserController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @cheese = params
    @user = User.create(user_params)
    if @user
      log_in @user
      render 'show'
    else
      render 'new'
    end
  end

  def show
   #@user = current_user
  end
  
  private

    def user_params
      params.require(:user).permit(:name)
    end
end
