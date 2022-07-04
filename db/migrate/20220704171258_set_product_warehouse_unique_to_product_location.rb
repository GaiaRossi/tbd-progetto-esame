class SetProductWarehouseUniqueToProductLocation < ActiveRecord::Migration[7.0]
  def change
    add_index :product_locations, [:product_id, :warehouse_id], unique: true
  end
end
