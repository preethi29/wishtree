class AssociationUserAndWishToContribution < ActiveRecord::Migration
  def change
    add_column :contributions, :wish_id, :integer
    add_column :contributions, :user_id, :integer
    add_foreign_key(:contributions, :wishes)
    add_foreign_key(:contributions, :users)
  end
end
