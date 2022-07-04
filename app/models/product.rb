class Product < ApplicationRecord
    has_many :review
    has_many :product_location
    has_many :warehouse, :through => :product_location
    has_many :order_row
    has_many :order, :through => :order_row
    accepts_nested_attributes_for :product_location, :reject_if => :quantity_blank

    def quantity_blank(q)
        return q[:quantity].blank?
    end
end
