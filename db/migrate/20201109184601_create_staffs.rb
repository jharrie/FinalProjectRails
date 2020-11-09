class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :title
      t.date :apptdate
      t.decimal :rate
      t.string :fname
      t.string :lname
      t.string :address
      t.string :city
      t.string :postal
      t.string :phone
      t.integer :service_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
