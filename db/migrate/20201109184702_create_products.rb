class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.boolean :discount
      t.decimal :discount_amount
      t.integer :stock
      t.integer :cart_id

      t.timestamps
    end
  end
end
