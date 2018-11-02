class ChangeUserIdentifierToString < ActiveRecord::Migration[5.1]
  def change
    change_column :user_identifiers, :identifier, :string
  end
end
