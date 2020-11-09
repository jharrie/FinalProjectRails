ActiveAdmin.register Service do
  permit_params :name, :price, :discount, :discount_amount, :length, :cart_id, :staff_id
end
