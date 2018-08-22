require "rails_helper"

RSpec.describe SouthernculturesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/southerncultures").to route_to("southerncultures#index")
    end


    it "routes to #show" do
      expect(:get => "/southerncultures/1").to route_to("southerncultures#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/southerncultures").to route_to("southerncultures#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/southerncultures/1").to route_to("southerncultures#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/southerncultures/1").to route_to("southerncultures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/southerncultures/1").to route_to("southerncultures#destroy", :id => "1")
    end

  end
end
