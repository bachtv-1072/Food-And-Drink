class AddSortDeleteforCart < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :deleted_at, :datetime
    add_index :carts, :deleted_at
    add_column :cart_items, :deleted_at, :datetime
    add_index :cart_items, :deleted_at
    add_column :addresses, :deleted_at, :datetime
    add_index :addresses, :deleted_at
  end
end
