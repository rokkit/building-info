require "spec_helper"

describe ServiceorgsController do
  describe "routing" do

    it "routes to #index" do
      get("/serviceorgs").should route_to("serviceorgs#index")
    end

    it "routes to #new" do
      get("/serviceorgs/new").should route_to("serviceorgs#new")
    end

    it "routes to #show" do
      get("/serviceorgs/1").should route_to("serviceorgs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/serviceorgs/1/edit").should route_to("serviceorgs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/serviceorgs").should route_to("serviceorgs#create")
    end

    it "routes to #update" do
      put("/serviceorgs/1").should route_to("serviceorgs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/serviceorgs/1").should route_to("serviceorgs#destroy", :id => "1")
    end

  end
end
