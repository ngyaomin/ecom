module CartsHelper
  def check_price(line_item)
    number_to_currency line_item.product.price
  end
end
