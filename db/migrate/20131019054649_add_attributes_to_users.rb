class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :giver, :boolean
    add_column :users, :contact_no, :string
  end
end
