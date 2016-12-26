class UsersController < ApplicationController
  def index
    @user = User.find_by(username: cookies[:user])
    @contacts = @user.contacts.order(:updated_at)
  end

  def profile
    @user = User.find_by(username: cookies[:user])
    # find_by(user_id: @user.id).order(:updated_at).limit(10)
  end

  def address_book
  end

  def logout
    cookies.delete :user
    reset_session
    redirect_to '/'
    #or session[:username].clear or session.delete(key)
  end
end
