class AddKeysToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :customers, :staffs

    add_foreign_key :customers, :carts
  end
end
