module ItemsHelper

  def format_as_price(price_in_pence)
    pounds = price_in_pence / 100.0
    number_to_currency pounds, unit: "£", precision: 2
  end
end
