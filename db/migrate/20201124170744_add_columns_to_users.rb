class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :varchar
    add_column :users, :last_name, :varchar
    add_column :users, :address, :varchar
    add_column :users, :city, :varchar
    add_column :users, :province, :varchar
    add_column :users, :postal, :varchar
    add_column :users, :health_id, :varchar
    add_column :users, :phone, :varchar
    add_column :users, :cart_id, :integer
    add_column :users, :appointment_date, :date
  end
end
