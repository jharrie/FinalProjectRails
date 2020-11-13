class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :product_id
      t.integer :service_id
      t.text :description

      t.timestamps
    end
  end
end
