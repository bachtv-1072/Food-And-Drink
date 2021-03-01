class AddColumnForenkeyCoupon < ActiveRecord::Migration[6.0]
  def change
    add_column :coupons, :cart_id, :integer
    add_column :coupons, :order_id, :integer
    add_column :coupons, :user_id, :integer
    add_column :orders ,:total_price_after_coupon, :integer
  end
end
