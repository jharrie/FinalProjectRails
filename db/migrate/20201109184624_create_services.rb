class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :price
      t.boolean :discount
      t.decimal :discount_amount
      t.decimal :length
      t.integer :cart_id
      t.integer :staff_id

      t.timestamps
    end
  end
end
