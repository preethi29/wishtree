class AlterFulfillmentPrecision < ActiveRecord::Migration
  def change
    change_column :wishes, :percent_fullfilled, :decimal , :precision => 5, :scale => 2
  end
end
