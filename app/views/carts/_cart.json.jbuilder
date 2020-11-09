json.extract! cart, :id, :total, :balance, :itemtotal, :customer_id, :product_id, :service_id, :pst, :gst, :hst, :created_at, :updated_at
json.url cart_url(cart, format: :json)
