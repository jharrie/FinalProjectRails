class CorrectColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :customers, :staff_id, :integer
    add_foreign_key :staffs, :services
    add_foreign_key :staffs, :customers
  end
end
