class CorrectCartFk < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :carts, :provinces
  end
end
