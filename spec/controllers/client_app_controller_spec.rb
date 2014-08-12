require 'rails_helper'

RSpec.describe ClientAppController, :type => :controller do
  describe "GET #index" do
    it "renders the :index view"
  end

  describe "POST #login" do
    context "with valid credentials" do
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