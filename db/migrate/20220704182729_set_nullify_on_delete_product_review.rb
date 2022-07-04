class SetNullifyOnDeleteProductReview < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :reviews, :products, on_delete: :cascade
  end
end
