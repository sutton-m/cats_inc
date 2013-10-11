require 'spec_helper'

describe "Buying a product", slow: true do

  context "when there is a lot in stock" do
    before do
      Item.create!(name: "Catnip", stock: 5, price: 100)
    end

    it "lets you buy one, and then the stock number goes down by one" do
      visit root_path

      expect(page).to have_content "Catnip"
      click_button "Buy"

      expect(page).to have_content "Thank you for your purchase!"

      visit root_path

      expect(page).to have_content "In stock: 4"
    end
  end

  context "when there is one left in stock" do
    before do
      Item.create!(name: "Catnip", stock: 1, price: 100)
    end

    it "lets you buy one, and then the item does not appear on the homepage" do
      visit root_path

      click_button "Buy"

      expect(page).to have_content "Thank you for your purchase!"

      visit root_path

      expect(page).to have_no_content "Catnip"
    end
  end
end
