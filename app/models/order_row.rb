class OrderRow < ApplicationRecord
    belongs_to :order
    belongs_to :product

    validates_uniqueness_of :order_id, :product_id
end
