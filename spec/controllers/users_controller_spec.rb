require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #update_profile" do
    it "returns http success" do
      get :update_profile
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #address_book" do
    it "returns http success" do
      get :address_book
      expect(response).to have_http_status(:success)
    end
  end

end
