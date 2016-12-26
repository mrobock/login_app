class WelcomeController < ApplicationController
  def index
    redirect_to '/users/index' if User.find_by(username: cookies[:user])
  end

  def login
    if !params[:username].nil? && !params[:password].nil? && !params[:username].empty? && !params[:password].empty?
      @user = User.find_by(username: params[:username])
      if (@user && @user.password == params[:password])
        cookies[:user] = @user.username
        redirect_to '/users/index'
      else
        flash[:welcome_status] = "Log in Failed"
        redirect_to '/'
      end
    else
      flash[:welcome_status] = "Log in Failed"
      redirect_to '/'
    end
  end

end
