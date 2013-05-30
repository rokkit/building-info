require "spec_helper"

describe TypeOfHousesController do
  describe "routing" do

    it "routes to #index" do
      get("/type_of_houses").should route_to("type_of_houses#index")
    end

    it "routes to #new" do
      get("/type_of_houses/new").should route_to("type_of_houses#new")
    end

    it "routes to #show" do
      get("/type_of_houses/1").should route_to("type_of_houses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/type_of_houses/1/edit").should route_to("type_of_houses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/type_of_houses").should route_to("type_of_houses#create")
    end

    it "routes to #update" do
      put("/type_of_houses/1").should route_to("type_of_houses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/type_of_houses/1").should route_to("type_of_houses#destroy", :id => "1")
    end

  end
end
