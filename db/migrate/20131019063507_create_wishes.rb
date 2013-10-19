class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.date :due_date
      t.string :wish_item
      t.decimal :percent_fullfilled, :precision => 6, :scale => 5
      t.timestamps
    end
  end
end
