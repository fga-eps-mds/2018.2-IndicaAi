class RenameUserIdInUserIdentifier < ActiveRecord::Migration[5.1]
  def change
    rename_column :user_identifiers, :userId, :user_id
  end
end
