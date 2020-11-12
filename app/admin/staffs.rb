ActiveAdmin.register Staff do
  permit_params :title, :apptdate, :rate, :fname, :lname, :address, :city, :postal, :phone, :service_id, :customer_id, :image

  # form copied from activeadmin
  # DSL

  form do |f|
    f.semantic_errors # shows errors on :base
    f.inputs          # builds an input field for every attribute
    f.inputs do
      f.input :image, as: :file
    end
    f.actions         # adds the 'Submit' and 'Cancel' buttons
  end
end
