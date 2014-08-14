require "rails_helper"

RSpec.describe SyllabusesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/syllabuses").to route_to("syllabuses#index")
    end

    it "routes to #new" do
      expect(:get => "/syllabuses/new").to route_to("syllabuses#new")
    end

    it "routes to #show" do
      expect(:get => "/syllabuses/1").to route_to("syllabuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/syllabuses/1/edit").to route_to("syllabuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/syllabuses").to route_to("syllabuses#create")
    end

    it "routes to #update" do
      expect(:put => "/syllabuses/1").to route_to("syllabuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/syllabuses/1").to route_to("syllabuses#destroy", :id => "1")
    end

  end
end
