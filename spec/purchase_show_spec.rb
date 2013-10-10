require 'spec_helper'

describe "purchases/show" do
  before(:each) do
    @purchase = assign(:purchase, Purchase.new(item_id: 1))
  end

  it "renders attributes in <p>" do
    render

    expect(rendered).to match(/1/)
  end
end
