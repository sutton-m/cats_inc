class ItemsController < ApplicationController

  # GET /items
  # GET /items.json
  def index
    @items = Item.in_stock
  end

end
