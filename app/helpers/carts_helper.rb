module CartsHelper

  def check_price(line_item)
    number_to_currency line_item.product.price
  end

  def check_status(line_item)
    if user_signed_in?
      return "Subtotal (including discounts)"
    else
      return "Subtotal (Sign up or log in to enjoy 15% off) "
    end
  end

end
