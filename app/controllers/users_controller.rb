class UsersController < ApplicationController

 # def index
 #  render json: User.all, status: :ok  
 # end

 def show
  current_user = User.find(session[:user_id])
  render json: current_user, status: :ok  
 end
 
end

# def show
#  current_user = User.find(session[:user_id])
#  render json: current_user, status: :ok
# end
