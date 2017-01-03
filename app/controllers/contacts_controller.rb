class ContactsController < ApplicationController

  def add_contact
    @user = User.find_by(username: cookies[:user])
    @contact = Contact.create(first_name:params[:first_name],last_name:params[:last_name],address:params[:address],email:params[:email],user_id:@user.id)
    @contact.save
    redirect_to '/users/index'
  end

end
