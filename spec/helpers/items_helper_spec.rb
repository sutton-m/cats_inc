require 'spec_helper'

describe ItemsHelper do
  describe ".format_as_price" do
    subject { helper.format_as_price(1999) }
    it "returns the price with a pound symbol" do
      expect(subject).to start_with("£")
    end
    it "returns the price in whole pounds to 2 dp" do
      expect(subject).to end_with("19.99")
    end
  end
end
