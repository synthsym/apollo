require 'rails_helper'

RSpec.describe "Admin::Schools", :type => :request do
  describe "GET /admin_schools" do
    it "works! (now write some real specs)" do
      get admin_schools_path
      expect(response.status).to be(200)
    end
  end
end
