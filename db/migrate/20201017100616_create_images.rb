class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :link
      t.integer :coupon_id
    end
  end
end
