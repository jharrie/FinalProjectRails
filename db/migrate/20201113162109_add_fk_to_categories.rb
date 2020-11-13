class AddFkToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :category_id, :integer
    add_column :services, :category_id, :integer
    add_foreign_key :categories, :products
    add_foreign_key :categories, :services
    add_foreign_key :services, :categories
    add_foreign_key :products, :categories
  end
end
