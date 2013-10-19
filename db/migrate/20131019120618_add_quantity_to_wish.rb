class AddQuantityToWish < ActiveRecord::Migration
  def change
    add_column :wishes, :quantity, :decimal
  end
end
