require 'rails_helper'

RSpec.feature "Test Registration Page", type: :feature do
  context "Make sure the registration page works" do
    Steps do
      Given "I am on the registration page" do
        visit '/register_users/index'
      end
      Then "I can not submit without filling out all of the fields" do
        click_button 'Register'
        expect(page).to have_content 'Please enter a password'
      end
      Then "I can register a user after filling out all of the fields correctly" do
        fill_in 'first_name', with: 'Sam'
        fill_in 'last_name', with: 'Smith'
        fill_in 'email', with: "sam@smith.com"
        fill_in 'zip', with: '12345'
        fill_in 'username', with: 'ssmith'
        fill_in 'password', with: 'password!'
        click_button 'Register'
        expect(page).to have_content "You have succesfully registered to use this site!"
      end

      Then "I can not register a username that is already in use" do
        click_link('Register Here')
        fill_in 'first_name', with: 'Sam'
        fill_in 'last_name', with: 'Smith'
        fill_in 'email', with: "sam@smith.com"
        fill_in 'zip', with: '12345'
        fill_in 'username', with: 'ssmith'
        fill_in 'password', with: 'password!'
        click_button 'Register'
        expect(page).to have_content "This username has alreay been taken"
      end
    end
  end
end
