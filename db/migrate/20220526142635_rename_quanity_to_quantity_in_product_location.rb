class RenameQuanityToQuantityInProductLocation < ActiveRecord::Migration[7.0]
  def change
    rename_column :product_locations, :quanity, :quantity
  end
end
