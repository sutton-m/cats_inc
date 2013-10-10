require "spec_helper"

describe PurchasesController do
  describe "routing" do

    it "routes to #show" do
      expect(get("/purchases/1")).to route_to("purchases#show", :id => "1")
    end

  end
end
