class WelcomeController < ApplicationController
  def index
    if cookies[:user] == User.find_by(username: cookies[:user])
      redirect_to '/users/index'
    end
  end

  def login
    if !params[:username].nil? && !params[:password].nil? && !params[:username].empty? && !params[:password].empty?
      @user = User.find_by(username: params[:username])
      if (@user.password == params[:password])
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
