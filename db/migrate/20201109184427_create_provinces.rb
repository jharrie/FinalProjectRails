class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.integer :code
      t.decimal :pst
      t.decimal :gst
      t.decimal :hst
      t.integer :cart_id

      t.timestamps
    end
  end
end
