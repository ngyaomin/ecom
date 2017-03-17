module ProductsHelper

  def check_discounted_price(product)

    if user_signed_in?
      product.price = product.price*ENV["discount_rate"].to_f
      number_to_currency product.price
    else
      number_to_currency product.price
    end

  end

end
