module CartsHelper
  def check_price(line_item)
    if user_signed_in?
      line_item.product.price = line_item.product.price*ENV["discount_rate"].to_f
      number_to_currency line_item.product.price
    else
      number_to_currency line_item.product.price
    end

  end
end
