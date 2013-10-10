require "spec_helper"

describe ItemsController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/items")).to route_to("items#index")
    end

  end
end
