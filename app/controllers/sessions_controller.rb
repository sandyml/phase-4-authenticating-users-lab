class SessionsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :user_not_found

 # def index
 #  render json: User.all, status: :ok 
 # end

 def create 
  @user = User.find_by(username: params[:username])
  session[:user_id] ||= @user.id 
  render json: @user, status: :ok
 end

 # delete /logout 
 def destroy
  session.destroy
  head :no_content
 end

 private

 def user_not_found
  render json: { error: ["User not found"] }, status: :not_found
 end
end
