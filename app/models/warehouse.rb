class Warehouse < ApplicationRecord
    has_many :product, :through => :product_location
end
