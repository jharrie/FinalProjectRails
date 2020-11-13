class AddProvinceToCart < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :province_id, :integer
  end
end
