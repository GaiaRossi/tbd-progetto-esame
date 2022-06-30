class Warehouse < ApplicationRecord
    has_many :product_location
    has_many :product, :through => :product_location
end
