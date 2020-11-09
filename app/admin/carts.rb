ActiveAdmin.register Cart do
  permit_params :total, :balance, :itemtotal, :customer_id, :product_id, :service_id, :pst, :gst, :hst
end
