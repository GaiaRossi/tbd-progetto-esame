class SetNullifyOnDeleteProductOrderRow < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :order_rows, :products, on_delete: :cascade
  end
end
