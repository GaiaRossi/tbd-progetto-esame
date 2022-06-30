class Order < ApplicationRecord
    belongs_to :user
    has_many :order_row
    has_many :product, :through => :order_row
end
