class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :fname
      t.string :lname
      t.string :addr
      t.string :city
      t.string :prov
      t.string :postal
      t.string :login
      t.string :pass
      t.string :staff_id
      t.date :apptdate
      t.string :healthid
      t.integer :cart_id
      t.string :phone

      t.timestamps
    end
  end
end
