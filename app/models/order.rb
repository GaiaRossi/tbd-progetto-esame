class Order < ApplicationRecord
    belongs_to :user
    has_many :order_row
    has_many :product, :through => :order_row

    scope :past_orders, -> (review) { joins("INNER JOIN order_rows ON order_rows.order_id = orders.id").where("order_rows.product_id = ? AND orders.user_id = ?", review.product_id, review.user_id) }
end
