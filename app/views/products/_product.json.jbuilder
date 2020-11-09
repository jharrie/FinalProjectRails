json.extract! product, :id, :name, :price, :discount, :discount_amount, :stock, :cart_id, :created_at, :updated_at
json.url product_url(product, format: :json)
