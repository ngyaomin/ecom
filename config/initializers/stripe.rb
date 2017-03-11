Rails.configuration.stripe do |config|

  config.publishable_key = ENV['pk_test_GG8RyPUQj7hZmPKAFJwAgIDi']
  config.secret_key = ENV['sk_test_gAIpIbTKoOe3VuupER3KZkRG']

end

Stripe.api_key = Rails.configuration.stripe.secret_key
