class Item < ActiveRecord::Base

  scope :in_stock, ->{ where("stock > 0")}

  has_many :purchases

  def reduce_stock!
    self.stock -= 1
    save!
  end
end
