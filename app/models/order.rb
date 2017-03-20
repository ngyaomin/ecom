class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  def stripe_params(order)
    stripe_token = params[:stripeToken]
    payment_type = params[:stripeTokenType]
    customer_email = params[:stripeEmail]
    Stripe.api_key = "sk_test_gAIpIbTKoOe3VuupER3KZkRG"
    Stripe::Charge.create(
    amount: (@product.price*100).to_i,
    currency: "sgd",
    source: stripe_token
    )
  end
end
