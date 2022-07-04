class SetNullifyOnDeleteUserReview < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :reviews, :users, on_delete: :cascade
  end
end
