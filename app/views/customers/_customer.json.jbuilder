json.extract! customer, :id, :fname, :lname, :addr, :city, :prov, :postal, :login, :pass, :staff_id, :apptdate, :healthid, :cart_id, :phone, :created_at, :updated_at
json.url customer_url(customer, format: :json)
