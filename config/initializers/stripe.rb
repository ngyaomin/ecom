Rails.configuration.stripe do |config|

  config.publishable_key = 'pk_test_GG8RyPUQj7hZmPKAFJwAgIDi'
  config.secret_key = 'sk_test_gAIpIbTKoOe3VuupER3KZkRG'

end

Stripe.api_key = 'sk_test_gAIpIbTKoOe3VuupER3KZkRG'
