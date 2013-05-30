require "spec_helper"

describe OverlapsController do
  describe "routing" do

    it "routes to #index" do
      get("/overlaps").should route_to("overlaps#index")
    end

    it "routes to #new" do
      get("/overlaps/new").should route_to("overlaps#new")
    end

    it "routes to #show" do
      get("/overlaps/1").should route_to("overlaps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/overlaps/1/edit").should route_to("overlaps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/overlaps").should route_to("overlaps#create")
    end

    it "routes to #update" do
      put("/overlaps/1").should route_to("overlaps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/overlaps/1").should route_to("overlaps#destroy", :id => "1")
    end

  end
end
