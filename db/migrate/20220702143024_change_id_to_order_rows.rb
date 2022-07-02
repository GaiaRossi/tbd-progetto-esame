class ChangeIdToOrderRows < ActiveRecord::Migration[7.0]
  def change
    add_index :order_rows, [:order_id, :product_id], unique: true
  end
end
