class Product < ApplicationRecord
    belongs_to :category
    has_many :order_items

    validates :name, presence: { message: "- Product name can't be blank" }, length: { maximum: 255, message: "- Product name is too long (maximum is 255 characters)" }
    validates :content, presence: { message: "- Product description can't be blank" }
    validates :quantity, presence: { message: "- Quantity can't be blank" }, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "- Quantity must be a non-negative integer" }
    validates :price, presence: { message: "- Price can't be blank" }, numericality: { greater_than_or_equal_to: 0, message: "- Price must be a non-negative number" }
    validates :available, inclusion: { in: [true, false], message: "- Available must be true or false" }
    validates :released_at, presence: { message: "- Release date can't be blank" }
    validates :discount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100, message: "- Discount must be between 0 and 100" }
end