class Product < ApplicationRecord
    has_many :review
    has_many :warehouse, :through => :product_location
    has_many :order, :through => :order_row
end
