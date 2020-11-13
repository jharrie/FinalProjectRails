class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.int :product_id
      t.int :service_id
      t.text :description

      t.timestamps
    end
  end
end
