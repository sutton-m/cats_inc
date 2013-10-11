require 'spec_helper'

describe Purchase do
  describe "#reduce_stock_of_item" do
    let(:item) { Item.new }
    before do
      subject.stub(:item).and_return(item)
    end
    it "calls :reduce_stock! on the purchases item" do
      item.should_receive(:reduce_stock!)
      subject.reduce_stock_of_item
    end
  end
end
