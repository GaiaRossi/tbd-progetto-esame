class CreateProductLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :product_locations do |t|
      t.integer :product_id
      t.integer :warehouse_id
      t.integer :quanity

      t.timestamps
    end
  end
end
