ActiveAdmin.register Product do
  permit_params :name, :price, :discount, :discount_amount, :stock, :cart_id
end
