class AddFkToProducts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :products, :carts
  end
end
