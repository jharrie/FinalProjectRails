class ChangePriceColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :price, :integer
    change_column :services, :price, :integer
    rename_column :products, :price, :price_cents
    rename_column :services, :price, :price_cents
  end
end
