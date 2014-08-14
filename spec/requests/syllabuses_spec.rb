require 'rails_helper'

RSpec.describe "Syllabuses", :type => :request do
  describe "GET /syllabuses" do
    it "works! (now write some real specs)" do
      get syllabuses_path
      expect(response.status).to be(200)
    end
  end
end
