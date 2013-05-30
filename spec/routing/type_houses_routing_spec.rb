require "spec_helper"

describe TypeHousesController do
  describe "routing" do

    it "routes to #index" do
      get("/type_houses").should route_to("type_houses#index")
    end

    it "routes to #new" do
      get("/type_houses/new").should route_to("type_houses#new")
    end

    it "routes to #show" do
      get("/type_houses/1").should route_to("type_houses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/type_houses/1/edit").should route_to("type_houses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/type_houses").should route_to("type_houses#create")
    end

    it "routes to #update" do
      put("/type_houses/1").should route_to("type_houses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/type_houses/1").should route_to("type_houses#destroy", :id => "1")
    end

  end
end
