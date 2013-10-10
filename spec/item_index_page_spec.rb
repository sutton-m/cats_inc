require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      Item.new(name: "Item A", price: 1999),
      Item.new(name: "Item B", price: 3200)
    ])
  end

  it "renders a table of items" do
    render

    expect(rendered).to have_selector "tr>td", text: "Item A"
    expect(rendered).to have_selector "tr>td", text: "Item B"
  end

  it "renders each item's price" do
    render

    expect(rendered).to have_selector "td.price", text: "£19.99"
    expect(rendered).to have_selector "td.price", text: "£32.00"
  end

  it "renders a buy button next to each item" do
    render
    expect(rendered).to have_selector "td>form.button_to", count: 2
  end
end
