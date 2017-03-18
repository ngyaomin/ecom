class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :payment

  def subtotal(user_signed_in)
    if user_signed_in
      self.product.price*(ENV["discount_rate"].to_f) * self.quantity
    else
      self.product.price * self.quantity
    end
  end

end
