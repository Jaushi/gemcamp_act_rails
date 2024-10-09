class Search < ApplicationRecord
    def products
        @products ||= find_products
    end
  
    private
  
    def find_products
      products = Product.all
      products = products.where("name LIKE ?", "%#{name}%") if name.present?
      products = products.where("quantity >= ?", quantity_min) if quantity_min.present?
      products = products.where("quantity <= ?", quantity_max) if quantity_max.present?
      products = products.where("price >= ?", price_min) if price_min.present?
      products = products.where("price <= ?", price_max) if price_max.present?
      products = products.where(available: available) if available.present?
      products = products.where("released_at >= ?", released_at_start) if released_at_start.present?
      products = products.where("released_at <= ?", released_at_end) if released_at_end.present?
      products = products.where("expired_date >= ?", expired_date_start) if expired_date_start.present?
      products = products.where("expired_date <= ?", expired_date_end) if expired_date_end.present?
      products
    end
  end