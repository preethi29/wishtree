class RemoveGiverFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :giver, :boolean
  end
end
