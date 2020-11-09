class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.decimal :total
      t.decimal :balance
      t.integer :itemtotal
      t.integer :customer_id
      t.integer :product_id
      t.integer :service_id
      t.decimal :pst
      t.decimal :gst
      t.decimal :hst

      t.timestamps
    end
  end
end
