require "spec_helper"

describe MetrosController do
  describe "routing" do

    it "routes to #index" do
      get("/metros").should route_to("metros#index")
    end

    it "routes to #new" do
      get("/metros/new").should route_to("metros#new")
    end

    it "routes to #show" do
      get("/metros/1").should route_to("metros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/metros/1/edit").should route_to("metros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/metros").should route_to("metros#create")
    end

    it "routes to #update" do
      put("/metros/1").should route_to("metros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/metros/1").should route_to("metros#destroy", :id => "1")
    end

  end
end
