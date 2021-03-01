class CartItem < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :cart, optional: true

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  acts_as_paranoid

  before_save :set_save_price_to_cart_item

  def save_price_to_cart_item
    # If there is a record
    if persisted?
      self[:save_price_to_cart_item]
    else
      product.price
    end
  end
  def get_total_price
    save_price_to_cart_item * quantity
  end
  private
  def set_save_price_to_cart_item
    self[:save_price_to_cart_item] = save_price_to_cart_item
  end
end
