require "spec_helper"

describe StairsController do
  describe "routing" do

    it "routes to #index" do
      get("/stairs").should route_to("stairs#index")
    end

    it "routes to #new" do
      get("/stairs/new").should route_to("stairs#new")
    end

    it "routes to #show" do
      get("/stairs/1").should route_to("stairs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stairs/1/edit").should route_to("stairs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stairs").should route_to("stairs#create")
    end

    it "routes to #update" do
      put("/stairs/1").should route_to("stairs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stairs/1").should route_to("stairs#destroy", :id => "1")
    end

  end
end
