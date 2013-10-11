require 'spec_helper'

describe Item do
  describe "#reduce_stock!" do
    subject { described_class.new(stock: 15) }
    before do
      subject.stub(:save!)
    end
    it "reduces the stock number by 1" do
      subject.reduce_stock!
      expect(subject.stock).to eq 14
    end
    it "saves the record" do
      subject.should_receive(:save!)
      subject.reduce_stock!
    end
  end
end
