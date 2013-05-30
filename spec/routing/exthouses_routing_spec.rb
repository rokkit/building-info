require "spec_helper"

describe ExthousesController do
  describe "routing" do

    it "routes to #index" do
      get("/exthouses").should route_to("exthouses#index")
    end

    it "routes to #new" do
      get("/exthouses/new").should route_to("exthouses#new")
    end

    it "routes to #show" do
      get("/exthouses/1").should route_to("exthouses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exthouses/1/edit").should route_to("exthouses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exthouses").should route_to("exthouses#create")
    end

    it "routes to #update" do
      put("/exthouses/1").should route_to("exthouses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exthouses/1").should route_to("exthouses#destroy", :id => "1")
    end

  end
end
