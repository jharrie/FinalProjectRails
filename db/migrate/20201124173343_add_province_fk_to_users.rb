class AddProvinceFkToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :province, :province_id
    add_foreign_key :users, :provinces
  end
end
