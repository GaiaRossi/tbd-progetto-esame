class User < ApplicationRecord
    has_many :order
    has_many :review
end
