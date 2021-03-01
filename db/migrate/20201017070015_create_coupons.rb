class CreateCoupons < ActiveRecord::Migration[6.0]
  def change
    create_table :coupons do |t|
      t.integer :formality
      t.integer :price_coupon
      t.string :content
      t.datetime :deleted_at , index: true
      t.timestamps
    end
  end
end
