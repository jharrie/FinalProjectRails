ActiveAdmin.register Staff do
  permit_params :title, :apptdate, :rate, :fname, :lname, :address, :city, :postal, :phone, :service_id, :customer_id, :image
end
