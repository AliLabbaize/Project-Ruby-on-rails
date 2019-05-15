class SessionsController < ApplicationController
  
  skip_before_action :only_signed_in, only: [:new, :create]

  
  def new
  end

  def create
    user_params = params.require(:users)
    @user = User.where(user_name: user_params[:username]).or(User.where(mail: user_params[:username])).first
    if @user and @user.authenticate(user_params[:password])
      session[:auth] = @user.to_session
      
      redirect_to root_path, success: "You're logged in" 
    else
      redirect_to new_session_path, danger: 'Password or Username incorrect please try agains'
    end

  end

  def destroy
  end
end
