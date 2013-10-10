require 'spec_helper'

describe ItemsController do

  describe "GET index" do
    it "assigns in stock items as @items" do
      in_stock_item = Item.create!(stock: 5)
      out_of_stock_item = Item.create!(stock: 0)

      get :index
      expect(assigns(:items)).to eq([in_stock_item])
    end
  end

end
