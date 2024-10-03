class Product < ApplicationRecord
belongs_to :category
has_many :order_items
    validates :name, presence: true, length: { maximum: 255 }
    validates :content, presence: true
    validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :available, inclusion: { in: [true, false] }
    validates :released_at, presence: true
    validates :discount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end