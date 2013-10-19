class WishAssociation < ActiveRecord::Migration
  def change
    add_column :wishes, :user_id, :integer
    add_column :wishes, :needy_id, :integer
    add_column :wishes, :purpose_id, :integer
    add_column :wishes, :help_type_id, :integer
    add_foreign_key(:wishes, :users)
    add_foreign_key(:wishes, :needies)
    add_foreign_key(:wishes, :purposes)
    add_foreign_key(:wishes, :help_types)
  end
end
