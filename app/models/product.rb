class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items

  validate :name_presence_and_length
  validate :content_presence
  validate :quantity_presence_and_numericality
  validate :price_presence_and_numericality
  validate :available_inclusion
  validate :released_at_presence
  validate :discount_numericality

  private

  def name_presence_and_length
    if name.blank?
      errors.add(:name, "- Product name can't be blank")
    elsif name.length > 255
      errors.add(:name, "- Product name is too long (maximum is 255 characters)")
    end
  end

  def content_presence
    if content.blank?
      errors.add(:content, "- Product description can't be blank")
    end
  end

  def quantity_presence_and_numericality
    if quantity.blank?
      errors.add(:quantity, "- Quantity can't be blank")
    elsif !quantity.is_a?(Integer) || quantity < 0
      errors.add(:quantity, "- Quantity must be a non-negative integer")
    end
  end

  def price_presence_and_numericality
    if price.blank?
      errors.add(:price, "- Price can't be blank")
    elsif price < 0
      errors.add(:price, "- Price must be a non-negative number")
    end
  end

  def available_inclusion
    unless [true, false].include?(available)
      errors.add(:available, "- Available must be true or false")
    end
  end

  def released_at_presence
    if released_at.blank?
      errors.add(:released_at, "- Release date can't be blank")
    end
  end

  def discount_numericality
    if discount.present? && (discount < 0 || discount > 100)
      errors.add(:discount, "- Discount must be between 0 and 100")
    end
  end
end