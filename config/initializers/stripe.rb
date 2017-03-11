Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_GG8RyPUQj7hZmPKAFJwAgIDi'],
  :secret_key      => ENV['sk_test_gAIpIbTKoOe3VuupER3KZkRG']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
