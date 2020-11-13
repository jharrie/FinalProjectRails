class AddFkToServices < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :services, :carts
  end
end
