class ChangeProvincesCodeToString < ActiveRecord::Migration[6.0]
  def change
    change_column :provinces, :code, :string
  end
end
