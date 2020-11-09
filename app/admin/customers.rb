ActiveAdmin.register Customer do
  permit_params :fname, :lname, :addr, :city, :prov, :postal, :login, :pass, :staff_id, :apptdate, :healthid, :cart_id, :phone
end
