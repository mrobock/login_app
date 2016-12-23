class RegisterUsersController < ApplicationController
  def index
  end

  def register
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.street = params[:street]
    @user.city = params[:city]
    @user.state = params[:state]
    @user.zip = params[:zip]
    @user.username = params[:username]
    @user.password = params[:password]
    if @user.save
      flash.now[:welcome_status] = "You have succesfully registered to use this site!"
      render '/welcome/index'
    else
      flash.now[:first_name] = @user.errors.messages[:first_name][0]
      flash.now[:last_name] = @user.errors.messages[:last_name][0]
      flash.now[:email] = @user.errors.messages[:email][0]
      flash.now[:street] = @user.errors.messages[:street][0]
      flash.now[:city] = @user.errors.messages[:city][0]
      flash.now[:state] = @user.errors.messages[:state][0]
      flash.now[:zip] = @user.errors.messages[:zip][0]
      flash.now[:username] = @user.errors.messages[:username][0]
      flash.now[:password] = @user.errors.messages[:password][0]

        render 'index'
    end
  end



end
