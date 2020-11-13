class AddFkToCart < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :carts, :services
    add_foreign_key :carts, :products
    add_foreign_key :carts, :customers
  end
end
