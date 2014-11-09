require "rails_helper"

RSpec.describe SynchronizationsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/synchronizations").to route_to("synchronizations#index")
    end

    it "routes to #new" do
      expect(:get => "/synchronizations/new").to route_to("synchronizations#new")
    end

    it "routes to #show" do
      expect(:get => "/synchronizations/1").to route_to("synchronizations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/synchronizations/1/edit").to route_to("synchronizations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/synchronizations").to route_to("synchronizations#create")
    end

    it "routes to #update" do
      expect(:put => "/synchronizations/1").to route_to("synchronizations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/synchronizations/1").to route_to("synchronizations#destroy", :id => "1")
    end

  end
end
