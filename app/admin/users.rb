ActiveAdmin.register User do
  permit_params :first_name, :last_name, :address, :city, :provice, :postal, :email, :staff_id, :appointment_date, :health_id, :cart_id, :phone
end
