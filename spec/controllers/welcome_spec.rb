require 'rails_helper'

RSpec.feature "Test Welcome Page", type: :feature do

  context "go to the registration page" do
    Steps "to go to the registration page" do
      Given "I am on the index page" do
        visit '/'
        click_link('Register Here')
      end
      Then "I expect to be on the registration page" do
      expect(page).to have_content 'Welcome to the registration page'
      end
    end
  end

end
