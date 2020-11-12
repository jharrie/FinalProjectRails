class AddCartToCustomer < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :customers, :carts
  end
end
