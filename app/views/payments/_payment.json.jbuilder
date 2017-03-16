json.extract! payment, :id, :address, :contact, :cart_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
