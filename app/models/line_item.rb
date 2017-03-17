class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :payment

  def subtotal
    self.product.price * self.quantity
  end
end
