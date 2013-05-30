require "spec_helper"

describe AnentrancesController do
  describe "routing" do

    it "routes to #index" do
      get("/anentrances").should route_to("anentrances#index")
    end

    it "routes to #new" do
      get("/anentrances/new").should route_to("anentrances#new")
    end

    it "routes to #show" do
      get("/anentrances/1").should route_to("anentrances#show", :id => "1")
    end

    it "routes to #edit" do
      get("/anentrances/1/edit").should route_to("anentrances#edit", :id => "1")
    end

    it "routes to #create" do
      post("/anentrances").should route_to("anentrances#create")
    end

    it "routes to #update" do
      put("/anentrances/1").should route_to("anentrances#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/anentrances/1").should route_to("anentrances#destroy", :id => "1")
    end

  end
end
