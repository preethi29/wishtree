class CreateNeedies < ActiveRecord::Migration
  def change
    create_table :needies do |t|
      t.string :name
      t.integer :age
      t.string :country
      t.timestamps
    end
  end
end
