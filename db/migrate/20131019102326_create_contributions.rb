class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.decimal :contributed_qty

      t.timestamps
    end
  end
end
