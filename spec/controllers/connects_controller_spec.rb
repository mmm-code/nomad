require 'rails_helper'

RSpec.describe ConnectsController, type: :controller do
  describe "connects#index action" do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end  
  end  
  
  describe "connects#new action" do
    it "should successfully show the input form" do
      get :new
      expect(response).to have_http_status(:success)
    end  
  end  
  
  describe "connect#create action" do
    it "should successfully create a new gram in our database" do
      post :create, params: { connect: { about: 'Hello!' } }
      expect(response).to redirect_to root_path
      
      connect = Connect.last
      expect(connect.about).to eq("Hello!")
    end  
  end  

end
