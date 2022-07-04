class User < ApplicationRecord
    has_many :order
    has_many :review

    validates_uniqueness_of :username
end
