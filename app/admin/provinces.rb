ActiveAdmin.register Province do
  permit_params :name, :code, :pst, :gst, :hst, :cart_id
end
