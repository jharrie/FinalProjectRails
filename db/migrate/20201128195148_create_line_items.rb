class CreateLineItems < ActiveRecord::Migration[6.0]
  def change
    create_table :line_items do |t|
      t.integer :product_id
      t.string :cart_id
      t.string :integer
      t.float :price
      t.integer :quantity
    end
  end
end
