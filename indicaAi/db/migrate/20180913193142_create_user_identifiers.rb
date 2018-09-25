class CreateUserIdentifiers < ActiveRecord::Migration[5.1]
  def change
    create_table :user_identifiers do |t|
      t.integer :userId

      t.timestamps
    end
  end
end
