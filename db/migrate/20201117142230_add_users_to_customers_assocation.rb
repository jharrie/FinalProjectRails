class AddUsersToCustomersAssocation < ActiveRecord::Migration[6.0]
  # TODO: ADD ASSOCIATIONS FROM USER TO CUSTOMER
  def change
    add_column :users, :staff_id, :integer
    add_column :users, :customer_id, :integer
    add_column :customers, :user_id, :integer
    add_column :staffs, :user_id, :integer
    add_foreign_key :users, :staffs
    add_foreign_key :users, :customers
    add_foreign_key :staffs, :users
    add_foreign_key :customers, :users
  end
end
