require "spec_helper"

describe "routes for 'Items'" do

  it "routes to #index" do
    expect(get("/items")).to route_to("items#index")
  end
end