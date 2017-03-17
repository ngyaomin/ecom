class Payment < ApplicationRecord

  belongs_to :cart
  belongs_to :line_item

  # def transaction(stripeToken)
  #   begin
  #     e = Stripe::Charge.create(
  #       amount: (self.cart.total_price*100).to_i,
  #       currency: "sgd",
  #       source: stripeToken
  #     )
  #     self.save
  #   rescue Stripe::CardError => e
  #     body = e.json_body
  #     err = body[:error]
  #     puts err
  #     puts "transcation fails"
  #   end
  # end
end
