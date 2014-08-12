require 'rails_helper'

RSpec.describe ClientAppController, :type => :controller do
  describe "GET #index" do
    subject { get :index }
    it "renders the :index view" do
      is_expected.to render_template(:index)
    end
  end

  describe "POST #login" do
    context "with valid credentials" do
      subject { 
        user = build(:user)
        post_via_redirect :login, :user => { :email => user.email, :password => user.password } 
      }
      it "is using https" do
        is_expected.to 
      end
      it "returns an auth token"
    end
    context "with invalid credentials" do
      it "returns a 401 error"
    end
  end

  describe "POST #logout" do
    context "when logged in" do
      it "returns a 200 status"
    end
    context "when logged out" do
      it "returns a 400 error"
    end
  end
end