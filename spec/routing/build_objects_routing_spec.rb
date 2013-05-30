require "spec_helper"

describe BuildObjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/build_objects").should route_to("build_objects#index")
    end

    it "routes to #new" do
      get("/build_objects/new").should route_to("build_objects#new")
    end

    it "routes to #show" do
      get("/build_objects/1").should route_to("build_objects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/build_objects/1/edit").should route_to("build_objects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/build_objects").should route_to("build_objects#create")
    end

    it "routes to #update" do
      put("/build_objects/1").should route_to("build_objects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/build_objects/1").should route_to("build_objects#destroy", :id => "1")
    end

  end
end
