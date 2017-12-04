class Category < ApplicationRecord
    has_many :product
    accepts_nested_attributes_for :product
end
